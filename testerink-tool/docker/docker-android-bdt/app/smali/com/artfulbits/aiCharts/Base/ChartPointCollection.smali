.class public final Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;,
        Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;,
        Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

.field private b:I

.field protected final m_points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->b:I

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    return-void
.end method


# virtual methods
.method public final add(ILcom/artfulbits/aiCharts/Base/ChartPoint;)V
    .locals 1

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {p2, p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setSeries(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->b:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->onPointsChanged(Lcom/artfulbits/aiCharts/Base/ChartPoint;Lcom/artfulbits/aiCharts/Base/ChartPoint;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Point already added to series"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->add(ILcom/artfulbits/aiCharts/Base/ChartPoint;)V

    return-void
.end method

.method public final add(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {p1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setSeries(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->b:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->onPointsChanged(Lcom/artfulbits/aiCharts/Base/ChartPoint;Lcom/artfulbits/aiCharts/Base/ChartPoint;)V

    :cond_0
    return v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Point already added to series"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->add(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Z

    move-result p1

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final varargs addDate(J[D)Lcom/artfulbits/aiCharts/Base/ChartPoint;
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->Date:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    iput-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->m_xValueType:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    long-to-double p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->addXY(D[D)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object p1

    return-object p1
.end method

.method public final varargs addDate(Ljava/util/Calendar;[D)Lcom/artfulbits/aiCharts/Base/ChartPoint;
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->Date:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    iput-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;->m_xValueType:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->addXY(D[D)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object p1

    return-object p1
.end method

.method public final varargs addDate(Ljava/util/Date;[D)Lcom/artfulbits/aiCharts/Base/ChartPoint;
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->addDate(J[D)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object p1

    return-object p1
.end method

.method public final varargs addXY(D[D)Lcom/artfulbits/aiCharts/Base/ChartPoint;
    .locals 1

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;-><init>(D[D)V

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->add(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final beginUpdate()V
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->b:I

    return-void
.end method

.method public final clear()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setSeries(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0, v2, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->onPointsChanged(Lcom/artfulbits/aiCharts/Base/ChartPoint;Lcom/artfulbits/aiCharts/Base/ChartPoint;)V

    :cond_1
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final endUpdate()V
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->b:I

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->onPointsChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final get(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    return-object p1
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->get(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object p1

    return-object p1
.end method

.method protected final getMinMaxRange(I)Lcom/artfulbits/aiCharts/Base/DoubleRange;
    .locals 8

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v3, -0x10000000000001L

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v5, p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v5

    cmpl-double v7, v1, v5

    if-lez v7, :cond_1

    move-wide v1, v5

    :cond_1
    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    move-wide v3, v5

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/artfulbits/aiCharts/Base/DoubleRange;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/artfulbits/aiCharts/Base/DoubleRange;-><init>(DD)V

    return-object p1
.end method

.method protected final getSum(I)D
    .locals 5

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v3, p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public final indexOf(Lcom/artfulbits/aiCharts/Base/ChartPoint;)I
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setSeries(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->b:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1, v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->onPointsChanged(Lcom/artfulbits/aiCharts/Base/ChartPoint;Lcom/artfulbits/aiCharts/Base/ChartPoint;)V

    :cond_0
    return-object p1
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->remove(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setSeries(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->b:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1, v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->onPointsChanged(Lcom/artfulbits/aiCharts/Base/ChartPoint;Lcom/artfulbits/aiCharts/Base/ChartPoint;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->beginUpdate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setSeries(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->endUpdate()V

    return v2
.end method

.method public final removeAt(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->remove(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    return-void
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->beginUpdate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setSeries(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->endUpdate()V

    return v2
.end method

.method public final set(ILcom/artfulbits/aiCharts/Base/ChartPoint;)Lcom/artfulbits/aiCharts/Base/ChartPoint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setSeries(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setSeries(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0, p2, p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->onPointsChanged(Lcom/artfulbits/aiCharts/Base/ChartPoint;Lcom/artfulbits/aiCharts/Base/ChartPoint;)V

    :cond_0
    return-object p1
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->set(ILcom/artfulbits/aiCharts/Base/ChartPoint;)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object p1

    return-object p1
.end method

.method public final setData(Landroid/database/Cursor;I[I)V
    .locals 1

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;

    invoke-direct {v0, p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$b;-><init>(I[I)V

    invoke-virtual {p0, p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->setData(Landroid/database/Cursor;Lcom/artfulbits/aiCharts/Base/IItemBinder;)V

    return-void
.end method

.method public final setData(Landroid/database/Cursor;Lcom/artfulbits/aiCharts/Base/IItemBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/artfulbits/aiCharts/Base/IItemBinder<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->beginUpdate()V

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->clear()V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/artfulbits/aiCharts/Base/IItemBinder;->bind(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->add(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->endUpdate()V

    return-void
.end method

.method public final setData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    array-length p2, p3

    new-array p2, p2, [I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p3, v0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->setData(Landroid/database/Cursor;I[I)V

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public final setData(Ljava/lang/Iterable;Lcom/artfulbits/aiCharts/Base/IItemBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Lcom/artfulbits/aiCharts/Base/IItemBinder<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->beginUpdate()V

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/artfulbits/aiCharts/Base/IItemBinder;->bind(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->add(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->endUpdate()V

    return-void
.end method

.method public final setData(Lorg/w3c/dom/Element;Lcom/artfulbits/aiCharts/Base/IItemBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lcom/artfulbits/aiCharts/Base/IItemBinder<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->beginUpdate()V

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->clear()V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Lcom/artfulbits/aiCharts/Base/IItemBinder;->bind(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->add(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->endUpdate()V

    return-void
.end method

.method public final varargs setData(Lorg/w3c/dom/Element;ZLjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;

    invoke-direct {p2, p0, p3, p4}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;-><init>(Lcom/artfulbits/aiCharts/Base/ChartPointCollection;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->setData(Lorg/w3c/dom/Element;Lcom/artfulbits/aiCharts/Base/IItemBinder;)V

    return-void

    :cond_0
    new-instance p2, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;

    invoke-direct {p2, p0, p3, p4}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;-><init>(Lcom/artfulbits/aiCharts/Base/ChartPointCollection;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setData([B)V
    .locals 8

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->beginUpdate()V

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    int-to-double v3, v1

    const/4 v5, 0x1

    new-array v5, v5, [D

    aget-byte v6, p1, v1

    int-to-double v6, v6

    aput-wide v6, v5, v0

    invoke-direct {v2, v3, v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;-><init>(D[D)V

    invoke-virtual {p0, v2}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->add(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->endUpdate()V

    return-void
.end method

.method public final setData([D)V
    .locals 8

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->beginUpdate()V

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    int-to-double v3, v1

    const/4 v5, 0x1

    new-array v5, v5, [D

    aget-wide v6, p1, v1

    aput-wide v6, v5, v0

    invoke-direct {v2, v3, v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;-><init>(D[D)V

    invoke-virtual {p0, v2}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->add(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->endUpdate()V

    return-void
.end method

.method public final setData([J)V
    .locals 8

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->beginUpdate()V

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    int-to-double v3, v1

    const/4 v5, 0x1

    new-array v5, v5, [D

    aget-wide v6, p1, v1

    long-to-double v6, v6

    aput-wide v6, v5, v0

    invoke-direct {v2, v3, v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;-><init>(D[D)V

    invoke-virtual {p0, v2}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->add(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->endUpdate()V

    return-void
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final toArray()[Lcom/artfulbits/aiCharts/Base/ChartPoint;
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Base/ChartPoint;

    return-object v0
.end method

.method public final bridge synthetic toArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->toArray()[Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
