.class final synthetic Lcom/artfulbits/aiCharts/Base/ChartTitle$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->values()[Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartTitle$1;->b:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartTitle$1;->b:[I

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Near:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartTitle$1;->b:[I

    sget-object v3, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Center:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    :try_start_2
    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartTitle$1;->b:[I

    sget-object v3, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Far:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_2
    invoke-static {}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->values()[Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/artfulbits/aiCharts/Base/ChartTitle$1;->a:[I

    :try_start_3
    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartTitle$1;->a:[I

    sget-object v3, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->Left:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartTitle$1;->a:[I

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->Right:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception v0

    return-void
.end method
