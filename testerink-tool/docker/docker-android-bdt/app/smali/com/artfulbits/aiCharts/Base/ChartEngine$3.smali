.class final Lcom/artfulbits/aiCharts/Base/ChartEngine$3;
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

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$3;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Landroid/graphics/Rect;)V
    .locals 10
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

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$3;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-static {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->a(Lcom/artfulbits/aiCharts/Base/ChartEngine;)I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->isAutoLayout()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {v7, v4}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->measure(Landroid/graphics/Point;)V

    sget-object v8, Lcom/artfulbits/aiCharts/Base/ChartEngine$5;->a:[I

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->getDock()Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    iput v8, v3, Landroid/graphics/Rect;->top:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v0

    sub-int/2addr v8, v9

    iput v8, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :pswitch_1
    iget v8, p2, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    iput v8, v3, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v0

    sub-int/2addr v8, v9

    iput v8, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :pswitch_2
    iget v8, p2, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v0

    add-int/2addr v8, v9

    iput v8, p2, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :pswitch_3
    iget v8, p2, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v9

    iput v8, v3, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v0

    add-int/2addr v8, v9

    iput v8, p2, Landroid/graphics/Rect;->left:I

    :goto_1
    invoke-virtual {v7, v3}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->layout(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {v7, v4}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->measure(Landroid/graphics/Point;)V

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->layout(Landroid/graphics/Rect;)V

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
