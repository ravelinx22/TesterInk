.class public Lcom/evancharlton/mileage/ImportExportActivity;
.super Landroid/app/Activity;
.source "ImportExportActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final map(ILjava/lang/Class;)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/ImportExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/evancharlton/mileage/ImportExportActivity$1;

    invoke-direct {v1, p0, p2}, Lcom/evancharlton/mileage/ImportExportActivity$1;-><init>(Lcom/evancharlton/mileage/ImportExportActivity;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ImportExportActivity;->setContentView(I)V

    .line 18
    const-class v0, Lcom/evancharlton/mileage/ImportActivity;

    const v1, 0x7f05001b

    invoke-direct {p0, v1, v0}, Lcom/evancharlton/mileage/ImportExportActivity;->map(ILjava/lang/Class;)V

    .line 19
    const-class v0, Lcom/evancharlton/mileage/ExportActivity;

    const v2, 0x7f050014

    invoke-direct {p0, v2, v0}, Lcom/evancharlton/mileage/ImportExportActivity;->map(ILjava/lang/Class;)V

    .line 21
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/ImportExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/ImportExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ImportExportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    :cond_0
    return-void
.end method
