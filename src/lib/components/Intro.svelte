
<div class="intro-content">
    
    <Paper color="primary" style="background-color: var(--mdc-theme-surface)" >
        <div class="centered">
            <Title>Welcome to my portfolio!</Title>
        </div>
        <LayoutGrid>
            <Cell span={3}>
                <div class="centered">
                    <img src="{base}/favicon.png" alt="Miloš Kožović" />
                    <p class="mdc-typography--subtitle1" >That's me!</p>
                </div>
            </Cell>
            <Cell span={5}>
                <Content>
                    <p class="mdc-typography--body1">But how am I?</p>
                    <p class="mdc-typography--body1 custom">
                        I am a fullstack developer based in
                        <span style="color: red">Se</span><!--
                        --><span style="color: blue">rb</span><!--
                        --><span style="color: white">ia</span>
                    </p>
                </Content>
            </Cell>
        </LayoutGrid>
    </Paper>
    
</div>



<script>
    import Paper, { Title, Content } from "@smui/paper";
    import LayoutGrid, { Cell } from "@smui/layout-grid";

    import { base } from "$app/paths";
</script>


<style lang="scss">

    .intro-content {
        padding: 20px;
    }

    .centered {
        text-align: center;
    }

    .centered > img {
        display: block;
        margin-left: auto;
        margin-right: auto;
    }
</style>
