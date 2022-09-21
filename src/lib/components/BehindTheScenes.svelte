<!-- TODO: This component should be separated to 3 different: scrolling effect, animated element, and current one that implements them. -->

<div class="container">
    <div class="slide">

        <div class="back-panel panel">
            <p class="mdc-typography--headline1">Backend</p>
        </div>
        <div class="front-panel panel">
            <div class="background">

                <div class="animate" style="animation-duration: 15s;">
                    <img
                        src="Portfolio/svelte.png"
                        alt="svelte logo"
                    />
                </div>

                <div class="animate" style="animation-duration: 10s;">
                    <img
                        src="/Portfolio/react.png"
                        alt="react logo"
                    />
                </div>
                
            </div>
            
            <p class="mdc-typography--headline1">Frontend</p>
        </div>

    </div>
</div>



<script lang="ts">
    import Paper from "@smui/paper";
    import LayoutGrid, { Cell } from "@smui/layout-grid";
    import { onMount } from "svelte";

    const offset = 100;

    onMount(() => {
        const container = document.querySelector(".container") as HTMLElement;
        const slide = container?.querySelector(".slide") as HTMLElement;
        const dropElement = container?.querySelector(".front-panel") as HTMLElement;
        
        window.addEventListener("scroll", () => {

            const elementTop = container.getBoundingClientRect().top;
            const elementBottom = container.getBoundingClientRect().bottom;

            if (elementTop < 0 && elementBottom > window.innerHeight) {

                slide.style.top = `${Math.abs(elementTop)}px`;

                const upperValue = container.clientHeight - offset;
                const lowerValue = window.innerHeight + offset;

                const onePercent = (upperValue - lowerValue) / 100;

                // value that can be above 100 or under 0 because of offset
                // aslo represents percent of container TO BE scrolled so we substract it from 100
                let percentScrolled = 100 - (container.clientHeight - Math.abs(elementTop) - lowerValue) / onePercent;
                // clamp value: 0 < percentScrolled < 100
                percentScrolled = Math.round( Math.max(0, Math.min(percentScrolled, 100)) );

                const translate = {
                    x: -100/100*percentScrolled,
                    y: 0,
                    z: 100/100*percentScrolled
                }

                dropElement.style.transform = `perspective(500px) translate3d(0, -100px, -250px) rotate3d(0, 1, 0, -10deg) translate3d(${translate.x}px, ${translate.y}px, ${translate.z}px)`;
                dropElement.style.opacity = (1-(1/100*percentScrolled)*1.5).toString();
            }


        });
    });


</script>


<style lang="scss">

    @use '@material/theme/color-palette';

    .front-panel {
        float: left;
        box-shadow: 0px 0px 4px 1px var(--mdc-theme-primary);
    }

    .back-panel {
        box-shadow: 0px 0px 4px 1px var(--mdc-theme-secondary);
    }
    
    .panel {
        background-color: var(--mdc-theme-surface);
        position: absolute;
        width: 100%;
        height: 600px;
        transform: perspective(500px) translate3d(0, -100px, -250px) rotate3d(0, 1, 0, -10deg);
        transform-origin: bottom center;
    }

    .container {
        position: relative;
        height: 100%;
        width: 100%;
        overflow: hidden;
    }

    .slide {
        position: absolute;
        width: 100%;
        height: 100vw;
    }

    @keyframes bck-el-anim {
        0% {
            transform: translateY(-20px) translateX(-20px) translateY(0);
        }

        25% {
            transform: translateY(0) translateX(-40px) translateY(10px);
        }

        50% {
            transform: translateY(20px) translateX(-20px) translateY(0);
        }

        75% {
            transform: translateY(0) translateX(0) translateY(10px);
        }

        100% {
            transform: translateY(-20px) translateX(-20px) translateY(0);
        }
    }

    .background {
        position: absolute;
        top: 0;
        left: 0;
        width: 90%;
        height: 90%;
        margin: 5%;
        display: flex;
        align-items: center;
        justify-content: space-between;

        .animate {
            border-radius: 30%;
            width: 200px;
            animation: bck-el-anim ease-in-out infinite;
        
            img {
                width: 100%;
            }
        }
    }

</style>
