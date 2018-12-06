.class public Lcom/evancharlton/mileage/VehicleListActivity;
.super Lcom/evancharlton/mileage/BaseListActivity;
.source "VehicleListActivity.java"


# static fields
.field private static final MENU_CREATE:I = 0x2

.field private static final MENU_TYPES:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseListActivity;-><init>()V

    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .line 27
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;-><init>(Landroid/widget/BaseAdapter;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected addContextMenuItems(Landroid/view/ContextMenu;Landroid/widget/AdapterView$AdapterContextMenuInfo;J)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "info"    # Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .param p3, "id"    # J

    .line 72
    const/4 v0, 0x0

    const v1, 0x7f08009a

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    .line 73
    invoke-virtual {p0, v1, p3, p4}, Lcom/evancharlton/mileage/VehicleListActivity;->createContextMenuIntent(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 72
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Lcom/evancharlton/mileage/BaseListActivity;->addContextMenuItems(Landroid/view/ContextMenu;Landroid/widget/AdapterView$AdapterContextMenuInfo;J)V

    .line 75
    return-void
.end method

.method protected canDelete(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 93
    invoke-virtual {p0}, Lcom/evancharlton/mileage/VehicleListActivity;->getAdapter()Landroid/widget/BaseAdapter;

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

    .line 54
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
    .locals 1

    .line 62
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected handleContextMenuSelection(Landroid/content/Intent;J)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "itemId"    # J

    .line 79
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "default_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/VehicleListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    const v2, 0x7f080112

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/VehicleListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 86
    const/4 v2, 0x1

    return v2

    .line 88
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/evancharlton/mileage/BaseListActivity;->handleContextMenuSelection(Landroid/content/Intent;J)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x2

    const v2, 0x7f080011

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f040002

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 34
    const/4 v1, 0x1

    const v2, 0x7f08004a

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f040005

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 36
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(J)V
    .locals 1
    .param p1, "id"    # J

    .line 67
    const-class v0, Lcom/evancharlton/mileage/VehicleActivity;

    invoke-virtual {p0, p1, p2, v0}, Lcom/evancharlton/mileage/VehicleListActivity;->loadItem(JLjava/lang/Class;)V

    .line 68
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 41
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 49
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 46
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/evancharlton/mileage/VehicleActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleListActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    return v1

    .line 43
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/evancharlton/mileage/VehicleTypeListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleListActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
