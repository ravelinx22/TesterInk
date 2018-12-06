.class public final Lcom/artfulbits/aiCharts/Base/ChartLegendItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;,
        Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;,
        Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;
    }
.end annotation


# instance fields
.field private a:Lcom/artfulbits/aiCharts/Base/ChartLegend;

.field private b:Ljava/lang/Object;

.field protected final m_bounds:Landroid/graphics/Rect;

.field protected final m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCollection<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected final m_size:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_bounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_size:Landroid/graphics/Point;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartCollection;

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$1;

    invoke-direct {v1, p0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$1;-><init>(Lcom/artfulbits/aiCharts/Base/ChartLegendItem;)V

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;-><init>(Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 5

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    instance-of v3, v2, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    new-instance v4, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, p0, v2}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;-><init>(Lcom/artfulbits/aiCharts/Base/ChartLegendItem;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {v3, v4}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v3, v2, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    check-cast v2, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;

    invoke-virtual {v3, v2}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    new-instance v4, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p0, v2}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;-><init>(Lcom/artfulbits/aiCharts/Base/ChartLegendItem;Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/artfulbits/aiCharts/Base/ChartLegendItem;)Lcom/artfulbits/aiCharts/Base/ChartLegend;
    .locals 0

    iget-object p0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    return-object p0
.end method


# virtual methods
.method final a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v2, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;->a:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v3}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(Landroid/graphics/Point;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_size:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v2, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;->b:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;->measure(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_size:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget-object v5, v2, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;->b:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_size:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_size:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, v2, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;->b:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    iget-object v2, v2, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_size:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_size:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method final a(Landroid/graphics/Rect;Ljava/util/ArrayList;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v3, v2}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;->b:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_1
    iget-object v3, v3, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;->a:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v0, v5, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    move v0, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final addCell(Landroid/graphics/drawable/Drawable;)Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;
    .locals 1

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;

    invoke-direct {v0, p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;-><init>(Lcom/artfulbits/aiCharts/Base/ChartLegendItem;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final addCell(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;
    .locals 1

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;

    invoke-direct {v0, p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;-><init>(Lcom/artfulbits/aiCharts/Base/ChartLegendItem;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final addCell()V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addCell(Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearCells()V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->clear()V

    return-void
.end method

.method public final getCells()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    return-object v0
.end method

.method protected final getLegend()Lcom/artfulbits/aiCharts/Base/ChartLegend;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->b:Ljava/lang/Object;

    return-object v0
.end method

.method protected final invalidate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->invalidateChart(Z)V

    :cond_0
    return-void
.end method

.method public final setCell(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;

    instance-of v1, v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;

    invoke-static {v0, p2}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;->a(Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;

    invoke-direct {v1, p0, p2}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;-><init>(Lcom/artfulbits/aiCharts/Base/ChartLegendItem;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setCell(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;

    instance-of v1, v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;

    invoke-virtual {v0, p2}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->m_cells:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;

    invoke-direct {v1, p0, p2}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;-><init>(Lcom/artfulbits/aiCharts/Base/ChartLegendItem;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final setLegend(Lcom/artfulbits/aiCharts/Base/ChartLegend;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->b:Ljava/lang/Object;

    return-void
.end method
