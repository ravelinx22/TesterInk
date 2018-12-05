.class final Lcom/artfulbits/aiCharts/Base/ChartEngine$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/ILayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/artfulbits/aiCharts/Base/ChartEngine;


# direct methods
.method constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$4;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Landroid/graphics/Rect;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/artfulbits/aiCharts/Base/ILayout$IElement;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$4;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-static {v2}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->a(Lcom/artfulbits/aiCharts/Base/ChartEngine;)I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    mul-int v4, v4, v2

    sub-int/2addr v3, v4

    div-int/2addr v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/artfulbits/aiCharts/Base/ChartArea;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v3

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartArea;->isAutoLayout()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->layout(Landroid/graphics/Rect;)V

    :cond_1
    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int v7, v3, v2

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$4;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-static {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->b(Lcom/artfulbits/aiCharts/Base/ChartEngine;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_6

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartArea;->ensureLayout()V

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartArea;->isAutoLayout()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v6

    sget-object v7, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Cartesian:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    if-ne v6, v7, :cond_3

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getSeriesBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v4, v1, :cond_6

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartArea;->isAutoLayout()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v5

    sget-object v6, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Cartesian:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    if-ne v5, v6, :cond_5

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getSeriesBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v2}, Lcom/artfulbits/aiCharts/Base/ChartArea;->doLayout(Landroid/graphics/Rect;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method
