
<div class="details-container elevation {elevationClass}">
    <Paper square>

        
        {#if logo}
            <div class="logo-container">
                <img style={imageStyle} src={logo} alt={title} />
            </div>
        {/if}

        {#if title}
             <Title><h2 class="title">{title}</h2></Title>
        {/if}

        
        <Content>
            {#if description}
                <p class="description mdc-typography-body1">{description}</p>
            {/if}

            <slot></slot>
        </Content>
            

    </Paper>
</div>

<script lang="ts">
    import Paper, { Content, Title } from "@smui/paper";

    export let logo: string | undefined = undefined;
    export let title: string | undefined = undefined;
    export let description: string | undefined = undefined;
    export let elevationClass: string = "default";
    
    export let imageStyle: string | undefined = undefined;

</script>

<style lang="scss">

    .details-container {
        margin-top: 15px;
    }

    .logo-container {
        position: relative;
        height: 100px;
        top: -60px;
        
        img {
            backdrop-filter: blur(2px);
            display: block;
            margin: auto;
            max-width: 100%;
            max-height: 100%;
        }
    }

    .title {
        margin-top: 0;
        text-align: center;
    }

    :global(.description) {
        text-align: center;
    }

</style>
