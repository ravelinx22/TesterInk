.class Lcom/artfulbits/aiCharts/Base/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/artfulbits/aiCharts/Base/ChartArea;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartArea;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/a;->a:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)I
    .locals 0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result p0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result p1

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0
.end method

.method public static a(Landroid/graphics/Rect;FFILandroid/graphics/RectF;)V
    .locals 3

    and-int/lit8 v0, p3, 0xf

    const/high16 v1, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p4, Landroid/graphics/RectF;->right:F

    iget v0, p4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p4, Landroid/graphics/RectF;->left:F

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v1

    sub-float v2, v0, p1

    iput v2, p4, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p4, Landroid/graphics/RectF;->left:F

    iget v0, p4, Landroid/graphics/RectF;->left:F

    :goto_0
    add-float/2addr v0, p1

    iput v0, p4, Landroid/graphics/RectF;->right:F

    :goto_1
    shr-int/lit8 p1, p3, 0x4

    and-int/lit8 p1, p1, 0xf

    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_3
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iput p0, p4, Landroid/graphics/RectF;->bottom:F

    iget p0, p4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, p2

    iput p0, p4, Landroid/graphics/RectF;->top:F

    goto :goto_3

    :pswitch_4
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p2, v1

    sub-float p1, p0, p2

    iput p1, p4, Landroid/graphics/RectF;->top:F

    :goto_2
    add-float/2addr p0, p2

    iput p0, p4, Landroid/graphics/RectF;->bottom:F

    return-void

    :pswitch_5
    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    iput p0, p4, Landroid/graphics/RectF;->top:F

    iget p0, p4, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/graphics/RectF;FFLcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/RectF;)V
    .locals 2

    sget-object v0, Lcom/artfulbits/aiCharts/Base/q;->a:[I

    invoke-virtual {p3}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/high16 v0, 0x40000000    # 2.0f

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget p3, p0, Landroid/graphics/RectF;->right:F

    iput p3, p5, Landroid/graphics/RectF;->right:F

    iget p3, p5, Landroid/graphics/RectF;->right:F

    sub-float/2addr p3, p1

    iput p3, p5, Landroid/graphics/RectF;->left:F

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    div-float/2addr p1, v0

    sub-float v1, p3, p1

    iput v1, p5, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :pswitch_2
    iget p3, p0, Landroid/graphics/RectF;->left:F

    iput p3, p5, Landroid/graphics/RectF;->left:F

    iget p3, p5, Landroid/graphics/RectF;->left:F

    :goto_0
    add-float/2addr p3, p1

    iput p3, p5, Landroid/graphics/RectF;->right:F

    :goto_1
    sget-object p1, Lcom/artfulbits/aiCharts/Base/q;->a:[I

    invoke-virtual {p4}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result p3

    aget p1, p1, p3

    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_3
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    iput p0, p5, Landroid/graphics/RectF;->bottom:F

    iget p0, p5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, p2

    iput p0, p5, Landroid/graphics/RectF;->top:F

    goto :goto_3

    :pswitch_4
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    div-float/2addr p2, v0

    sub-float p1, p0, p2

    iput p1, p5, Landroid/graphics/RectF;->top:F

    :goto_2
    add-float/2addr p0, p2

    iput p0, p5, Landroid/graphics/RectF;->bottom:F

    return-void

    :pswitch_5
    iget p0, p0, Landroid/graphics/RectF;->top:F

    iput p0, p5, Landroid/graphics/RectF;->top:F

    iget p0, p5, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/a;->a:Lcom/artfulbits/aiCharts/Base/ChartArea;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    :goto_0
    return-void
.end method
