.class final synthetic Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/artfulbits/aiCharts/Enums/Shape3D;->values()[Lcom/artfulbits/aiCharts/Enums/Shape3D;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType$1;->a:[I

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Shape3D;->Box:Lcom/artfulbits/aiCharts/Enums/Shape3D;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Enums/Shape3D;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType$1;->a:[I

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Shape3D;->Cylinder:Lcom/artfulbits/aiCharts/Enums/Shape3D;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Enums/Shape3D;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType$1;->a:[I

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Shape3D;->Cone:Lcom/artfulbits/aiCharts/Enums/Shape3D;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Enums/Shape3D;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType$1;->a:[I

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Shape3D;->Pyramid:Lcom/artfulbits/aiCharts/Enums/Shape3D;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Enums/Shape3D;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception v0

    return-void
.end method
