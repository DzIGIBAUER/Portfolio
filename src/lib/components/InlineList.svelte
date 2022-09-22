

<div class="container">
    
    {#if listObject}

        {#each listObject as list}
            <section>
                <h4 class="mdc-typography--headline6">{`${list.title}:`}</h4>
                <ul aria-label={list.title}>

                    {#each list.entries as entrie}
                        <li class="mdc-typography--subtitle1">{entrie}</li>
                    {/each}

                </ul>
            </section>
        {/each}

    {/if}

</div>



<script lang="ts">
    interface IListObject {
        title: string,
        entries: Array<string>
    }

    export let listObject: IListObject[];
</script>


<style lang="scss">

    section {
        * {
            display: inline;
        }
    }

    ul {
        padding: 0;
    }

    li {
        display: inline;
        padding-left: 5px;

        &:not(:last-child):after {
            content: ",";
        }
    }

</style>