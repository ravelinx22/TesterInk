.class Lcom/evancharlton/mileage/FillupActivity$1;
.super Ljava/lang/Object;
.source "FillupActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/FillupActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/FillupActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/FillupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/evancharlton/mileage/FillupActivity;

    .line 229
    iput-object p1, p0, Lcom/evancharlton/mileage/FillupActivity$1;->this$0:Lcom/evancharlton/mileage/FillupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 232
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity$1;->this$0:Lcom/evancharlton/mileage/FillupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/evancharlton/mileage/FillupActivity;->access$002(Lcom/evancharlton/mileage/FillupActivity;Lcom/evancharlton/mileage/dao/Vehicle;)Lcom/evancharlton/mileage/dao/Vehicle;

    .line 233
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity$1;->this$0:Lcom/evancharlton/mileage/FillupActivity;

    iget-object v1, p0, Lcom/evancharlton/mileage/FillupActivity$1;->this$0:Lcom/evancharlton/mileage/FillupActivity;

    invoke-static {v1}, Lcom/evancharlton/mileage/FillupActivity;->access$100(Lcom/evancharlton/mileage/FillupActivity;)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/evancharlton/mileage/FillupActivity;->access$002(Lcom/evancharlton/mileage/FillupActivity;Lcom/evancharlton/mileage/dao/Vehicle;)Lcom/evancharlton/mileage/dao/Vehicle;

    .line 234
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 238
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
