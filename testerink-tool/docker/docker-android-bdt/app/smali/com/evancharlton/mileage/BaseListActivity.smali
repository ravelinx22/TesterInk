.class public abstract Lcom/evancharlton/mileage/BaseListActivity;
.super Landroid/app/ListActivity;
.source "BaseListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field protected mEmptyView:Landroid/widget/LinearLayout;

.field protected mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 36
    return-void
.end method

.method protected constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/evancharlton/mileage/BaseListActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 40
    return-void
.end method


# virtual methods
.method protected addContextMenuItems(Landroid/view/ContextMenu;Landroid/widget/AdapterView$AdapterContextMenuInfo;J)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "info"    # Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .param p3, "id"    # J

    .line 188
    const/4 v0, 0x0

    const v1, 0x7f080047

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const-string v2, "android.intent.action.EDIT"

    .line 189
    invoke-virtual {p0, v2, p3, p4}, Lcom/evancharlton/mileage/BaseListActivity;->createContextMenuIntent(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    .line 188
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 191
    iget v1, p2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/BaseListActivity;->canDelete(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const v1, 0x7f080026

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "android.intent.action.DELETE"

    .line 193
    invoke-virtual {p0, v1, p3, p4}, Lcom/evancharlton/mileage/BaseListActivity;->createContextMenuIntent(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 192
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 195
    :cond_0
    return-void
.end method

.method protected canDelete(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method protected createContextMenuIntent(Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "itemId"    # J

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 149
    return-object v0
.end method

.method protected final getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/evancharlton/mileage/BaseListActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method protected getCursor()Landroid/database/Cursor;
    .locals 6

    .line 87
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->getProjectionArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->getSortOrder()Ljava/lang/String;

    move-result-object v5

    .line 87
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evancharlton/mileage/BaseListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getFrom()[Ljava/lang/String;
.end method

.method protected getListLayout()I
    .locals 1

    .line 122
    const v0, 0x1090004

    return v0
.end method

.method protected getProjectionArray()[Ljava/lang/String;
    .locals 6

    .line 104
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->getFrom()[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "from":[Ljava/lang/String;
    array-length v1, v0

    .line 106
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 107
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 108
    nop

    .local v4, "i":I
    :goto_0
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    if-ge v3, v1, :cond_0

    .line 109
    add-int/lit8 v4, v3, 0x1

    aget-object v5, v0, v3

    aput-object v5, v2, v4

    .line 108
    add-int/lit8 v4, v3, 0x1

    goto :goto_0

    .line 111
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 1

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSortOrder()Ljava/lang/String;
    .locals 1

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTo()[I
    .locals 1

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method protected abstract getUri()Landroid/net/Uri;
.end method

.method protected handleContextMenuSelection(Landroid/content/Intent;J)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "itemId"    # J

    .line 198
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0, p2, p3}, Lcom/evancharlton/mileage/BaseListActivity;->onItemClick(J)V

    .line 200
    return v1

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.DELETE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    new-instance v0, Lcom/evancharlton/mileage/BaseListActivity$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/evancharlton/mileage/BaseListActivity$3;-><init>(Lcom/evancharlton/mileage/BaseListActivity;J)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/BaseListActivity;->showDeleteDialog(Ljava/lang/Runnable;)V

    .line 211
    return v1

    .line 213
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected initUI()V
    .locals 0

    .line 78
    return-void
.end method

.method protected itemDeleted(J)V
    .locals 0
    .param p1, "itemId"    # J

    .line 217
    return-void
.end method

.method protected loadItem(JLjava/lang/Class;)V
    .locals 2
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dao_item_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/BaseListActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 156
    const-string v1, "_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 157
    .local v1, "itemId":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 158
    invoke-virtual {p0, v0, v1, v2}, Lcom/evancharlton/mileage/BaseListActivity;->handleContextMenuSelection(Landroid/content/Intent;J)Z

    move-result v3

    return v3

    .line 161
    .end local v1    # "itemId":J
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    const v0, 0x7f070018

    invoke-virtual {p0, p1, v0}, Lcom/evancharlton/mileage/BaseListActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;I)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "layoutResId"    # I

    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/evancharlton/mileage/BaseListActivity;->setContentView(I)V

    .line 50
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/evancharlton/mileage/BaseListActivity;->mEmptyView:Landroid/widget/LinearLayout;

    .line 51
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 138
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 140
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 141
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v1

    .line 143
    .local v1, "id":J
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/evancharlton/mileage/BaseListActivity;->addContextMenuItems(Landroid/view/ContextMenu;Landroid/widget/AdapterView$AdapterContextMenuInfo;J)V

    .line 144
    return-void
.end method

.method public abstract onItemClick(J)V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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

    .line 133
    .local p1, "list":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p4, p5}, Lcom/evancharlton/mileage/BaseListActivity;->onItemClick(J)V

    .line 134
    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 55
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 57
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->initUI()V

    .line 59
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/BaseListActivity;->mListView:Landroid/widget/ListView;

    .line 60
    iget-object v0, p0, Lcom/evancharlton/mileage/BaseListActivity;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->getListLayout()I

    move-result v3

    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->getFrom()[Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->getTo()[I

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/evancharlton/mileage/BaseListActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/BaseListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/evancharlton/mileage/BaseListActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v0, p0, Lcom/evancharlton/mileage/BaseListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/evancharlton/mileage/BaseListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->setupEmptyView()V

    .line 70
    invoke-virtual {p0}, Lcom/evancharlton/mileage/BaseListActivity;->postUI()V

    .line 71
    return-void
.end method

.method protected postUI()V
    .locals 0

    .line 81
    return-void
.end method

.method protected setupEmptyView()V
    .locals 0

    .line 84
    return-void
.end method

.method protected showDeleteDialog(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "deleteAction"    # Ljava/lang/Runnable;

    .line 166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 167
    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/evancharlton/mileage/BaseListActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/evancharlton/mileage/BaseListActivity$2;-><init>(Lcom/evancharlton/mileage/BaseListActivity;Ljava/lang/Runnable;)V

    .line 168
    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/evancharlton/mileage/BaseListActivity$1;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/BaseListActivity$1;-><init>(Lcom/evancharlton/mileage/BaseListActivity;)V

    .line 174
    const v2, 0x1040009

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 180
    .local v0, "deleteDialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 181
    return-void
.end method
