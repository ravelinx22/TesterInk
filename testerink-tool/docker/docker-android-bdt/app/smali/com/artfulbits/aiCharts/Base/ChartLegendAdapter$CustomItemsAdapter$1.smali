.class final Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;-><init>(Ljava/util/Collection;Lcom/artfulbits/aiCharts/Base/IItemBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;


# direct methods
.method constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter$1;->a:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter$1;->a:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;

    iget-object p1, p1, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;->m_legend:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter$1;->a:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;

    iget-object p1, p1, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;->m_legend:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->invalidateChart(Z)V

    :cond_0
    return-void
.end method
