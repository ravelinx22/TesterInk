.class public final Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$SmartItemsAdapter;
.super Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmartItemsAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;->a:Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;

    invoke-direct {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$SmartItemsAdapter;-><init>(Lcom/artfulbits/aiCharts/Base/IItemBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/IItemBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artfulbits/aiCharts/Base/IItemBinder<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegendItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;-><init>(Lcom/artfulbits/aiCharts/Base/IItemBinder;)V

    return-void
.end method


# virtual methods
.method final a(I)Z
    .locals 2

    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v0, 0x10

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected final getSourceItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$SmartItemsAdapter;->getCorrespondingSeries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v0

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->getSourceItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
