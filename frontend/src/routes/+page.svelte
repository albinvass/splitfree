<script>
    import { onMount } from "svelte";
    import { get } from "svelte/store";

    let now = new Date(), month, day, year;
    let dateString;
    month = '' + (now.getMonth() + 1),
        day = '' + now.getDate(),
        year = now.getFullYear();
    if (month.length < 2) 
        month = '0' + month;
    if (day.length < 2) 
        day = '0' + day;
    dateString = [year, month, day].join('-');

    let expense = {
        expense_id: "",
        description: "",
        category: "groceries",
        date: dateString,
        price: 1,
        paid_by: "albin",
        split_type: "percent",
        debtors: {
            albin: 50,
            carolina: 50
        },
        receipt_url: ""
    }

    let expenseIdPromise = Promise;

    onMount(() => {
        expenseIdPromise = fetch('http://localhost:8000/api/expense/new').then(response => {
            response.json().then(json => {
                expense.expense_id = json.expense_id
            })
        })
    });

    async function submitExpense() {
        await expenseIdPromise
        console.log(expense)
        const res = await fetch(
            'http://localhost:8000/api/expense',
            {
                method: 'POST',
                body: JSON.stringify(expense),
                headers: {
                    "Content-Type": "application/json"
                },
            }
        )
    }
</script>

<h1>Splitfree</h1>


<form on:submit|preventDefault={submitExpense}>
    <table>
        <tr><td>Description: </td><td><input bind:value={expense.description}></td></tr>
        <tr><td>Price: </td><td><input bind:value={expense.price}></td></tr>
        <tr>
            <td>Category: </td>
            <td>
            <select bind:value={expense.category}>
                <option value="groceries">Groceries</option>
                <option value="furnishing">Furnishing</option>
                <option value="leisure">Leisure</option>
            </select>
            </td>
        </tr>
        <tr>
            <td>Currency: </td>
            <td>
                <select bind:value={expense.currency}>
                    <option value="sek">SEK</option>
                    <option value="usd">USD</option>
                    <option value="eur">EUR</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Paid By: </td>
            <td>
                <select bind:value={expense.paid_by}>
                    <option value="albin">Albin</option>
                    <option value="carolina">Carolina</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Split Type: </td>
            <td>
                <select bind:value={expense.split_type}>
                    <option value="percent">Percent</option>
                    <option value="exact">Exact</option>
                </select>
            </td>
        </tr>
        <tr><td>Date: </td><td><input bind:value={expense.date} type="date"></td></tr>
        <tr><td>Albin: </td><td><input bind:value={expense.debtors.albin}></td></tr>
        <tr><td>Carolina: </td><td><input bind:value={expense.debtors.carolina}></td></tr>



    </table>
    <button type="submit">
        Submit
    </button>

</form>