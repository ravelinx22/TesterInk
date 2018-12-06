.class Lcom/evancharlton/mileage/ImportActivity$2;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/ImportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/ImportActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/ImportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/evancharlton/mileage/ImportActivity;

    .line 91
    iput-object p1, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
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

    .line 94
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ImportActivity;->access$400(Lcom/evancharlton/mileage/ImportActivity;)Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    new-instance v1, Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/evancharlton/mileage/ImportActivity$FileLoader;-><init>(Lcom/evancharlton/mileage/ImportActivity$1;)V

    invoke-static {v0, v1}, Lcom/evancharlton/mileage/ImportActivity;->access$402(Lcom/evancharlton/mileage/ImportActivity;Lcom/evancharlton/mileage/ImportActivity$FileLoader;)Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ImportActivity;->access$400(Lcom/evancharlton/mileage/ImportActivity;)Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/ImportActivity$FileLoader;->attach(Lcom/evancharlton/mileage/ImportActivity;)V

    .line 98
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ImportActivity;->access$400(Lcom/evancharlton/mileage/ImportActivity;)Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/ImportActivity$FileLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ImportActivity;->access$400(Lcom/evancharlton/mileage/ImportActivity;)Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/ImportActivity$FileLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ImportActivity;->access$300(Lcom/evancharlton/mileage/ImportActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 103
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ImportActivity;->access$300(Lcom/evancharlton/mileage/ImportActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 104
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

    .line 108
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
