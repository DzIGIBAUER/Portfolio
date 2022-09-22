<slot></slot>

<style lang="scss" global>
    @use '@material/typography/mdc-typography';
    @use '@material/elevation/index' as elevation;

    @use '@material/theme/color-palette';

    @function box_shadow($color) {
        @return 0px 0px 4px 1px $color;
    }

    :global(body) {
        margin: 0;
    }

    .elevation {

        &.default {
            box-shadow: box_shadow(var(--mdc-theme-primary));
        }

        &.django {
            box-shadow: box_shadow(color-palette.$green-900);

            .elavation-child {
                box-shadow: box_shadow(color-palette.$amber-a400);
            }
        }

        &.django-rest-framework {
            box-shadow: box_shadow(color-palette.$red-300);

        }

        &.react {
            box-shadow: box_shadow(color-palette.$cyan-500);
        }
        
        &.svelte {
            box-shadow: box_shadow(color-palette.$orange-500);
        }

        &.godot {
            box-shadow: box_shadow(color-palette.$blue-900);
        }
    }
</style>