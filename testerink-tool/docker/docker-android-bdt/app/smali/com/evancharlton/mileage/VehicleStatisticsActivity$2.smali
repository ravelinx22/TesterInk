.class Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;
.super Ljava/lang/Object;
.source "VehicleStatisticsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/VehicleStatisticsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    .line 133
    iput-object p1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "row"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 136
    .local p1, "list":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->access$400(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->getNumHeadersAbove(I)I

    move-result v0

    sub-int/2addr p3, v0

    .line 137
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->STATISTICS:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/provider/Statistic;

    .line 138
    .local v0, "statistic":Lcom/evancharlton/mileage/provider/Statistic;
    invoke-virtual {v0}, Lcom/evancharlton/mileage/provider/Statistic;->getChartClass()Ljava/lang/Class;

    move-result-object v1

    .line 139
    .local v1, "target":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/evancharlton/mileage/ChartActivity;>;"
    if-eqz v1, :cond_0

    .line 140
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "vehicle_id"

    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-static {v4}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->access$000(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v3, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v3, v2}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    iget-object v3, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    const v4, 0x7f080089

    invoke-virtual {v3, v4}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 147
    :goto_0
    return-void
.end method
