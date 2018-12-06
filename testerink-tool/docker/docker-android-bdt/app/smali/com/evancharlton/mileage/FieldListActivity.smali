.class public Lcom/evancharlton/mileage/FieldListActivity;
.super Lcom/evancharlton/mileage/BaseListActivity;
.source "FieldListActivity.java"


# static fields
.field private static final MENU_ADD_FIELD:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFrom()[Ljava/lang/String;
    .locals 3

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "description"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 2

    .line 46
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "fields/"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f08000d

    invoke-interface {p1, v0, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f040002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 22
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(J)V
    .locals 1
    .param p1, "id"    # J

    .line 51
    const-class v0, Lcom/evancharlton/mileage/FieldActivity;

    invoke-virtual {p0, p1, p2, v0}, Lcom/evancharlton/mileage/FieldListActivity;->loadItem(JLjava/lang/Class;)V

    .line 52
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 27
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 29
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/FieldActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FieldListActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    const/4 v1, 0x1

    return v1
.end method

.method protected setupEmptyView()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/evancharlton/mileage/FieldListActivity;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 57
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/evancharlton/mileage/FieldListActivity;->mEmptyView:Landroid/widget/LinearLayout;

    const v2, 0x7f070006

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x7f05000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/evancharlton/mileage/FieldListActivity$1;

    invoke-direct {v2, p0}, Lcom/evancharlton/mileage/FieldListActivity$1;-><init>(Lcom/evancharlton/mileage/FieldListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method
