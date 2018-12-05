.class public Lcom/evancharlton/mileage/VehicleTypeListActivity;
.super Lcom/evancharlton/mileage/BaseListActivity;
.source "VehicleTypeListActivity.java"


# static fields
.field private static final MENU_CREATE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected canDelete(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 53
    invoke-virtual {p0}, Lcom/evancharlton/mileage/VehicleTypeListActivity;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected getFrom()[Ljava/lang/String;
    .locals 3

    .line 35
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

    .line 43
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "vehicles/types/"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 18
    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f080012

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f040002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 20
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(J)V
    .locals 1
    .param p1, "id"    # J

    .line 48
    const-class v0, Lcom/evancharlton/mileage/VehicleTypeActivity;

    invoke-virtual {p0, p1, p2, v0}, Lcom/evancharlton/mileage/VehicleTypeListActivity;->loadItem(JLjava/lang/Class;)V

    .line 49
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 25
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 30
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 27
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/evancharlton/mileage/VehicleTypeActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleTypeListActivity;->startActivity(Landroid/content/Intent;)V

    .line 28
    return v1
.end method
