
<div class="details-container elevation {elevationClass}">
    <Paper square>

        <div class="top">

            {#if logo}
                <div class="logo-container">
                    <img style={imageStyle} class="elevation {elevationClass}" src={logo} alt={title} />
                </div>
            {:else if banner}
                <div class="banner-container">
                    <img style={imageStyle} src={banner} alt={title} />
                </div>
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

    export let logo: string | undefined = undefined;
    export let banner: string | undefined = undefined;
    export let title: string | undefined = undefined;
    export let content: string | undefined = undefined;
    export let elevationClass: string = "default";
    
    export let imageStyle: string | undefined = undefined;

</script>

<style lang="scss">

    .top {
        display: flex;
    }

    .logo-container {
        position: relative;
        width: 25%;
        top: -100px;

        img {
            width: 100%;
            height: auto;
            background-color: gray;
        }
    }
    
    .banner-container {
        position: relative;
        width: 100%;
        clear: right;
        
        img {
            width: 100%;
            height: auto;
            background-color: gray;
        }
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
