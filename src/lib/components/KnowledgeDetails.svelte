
<div class="details-container elevation {elevationClass}">
    <Paper square>

        <div class="top">
            {#if image}
                <img class="elevation {elevationClass} image" src={image} alt={title} />
            {/if}

            {#if title}
                <h1 class="title mdc-typography--headline1">{title}</h1>
            {/if}
        </div>

        <div class="mid">
            <Content>
                <p class="content-body mdc-typography--body1">{content}</p>
            </Content>
        </div>

    </Paper>
</div>

<script lang="ts">
    import Paper, { Content } from "@smui/paper";

    export let image: string | undefined = undefined;
    export let title: string | undefined = undefined;
    export let content: string | undefined = undefined;
    export let elevationClass: string = "default";

</script>

<style lang="scss">

    .top {
        display: flex;
    }

    .image {
        position: relative;
        top: -100px;
        width: 25%;
        border-radius: 50%;
    }

    .title {
        margin-top: 0;
        width: 75%;
        text-align: center;
    }

    .content-body {
        text-align: center;
    }

</style>
