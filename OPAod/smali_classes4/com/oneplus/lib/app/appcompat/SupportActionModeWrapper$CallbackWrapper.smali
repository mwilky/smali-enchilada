.class public Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "SupportActionModeWrapper.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackWrapper"
.end annotation


# instance fields
.field final mActionModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mMenus:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field

.field final mWrappedCallback:Landroid/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mMenus:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method private getMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mMenus:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Lcom/oneplus/lib/menu/SupportMenu;

    invoke-static {v1, v2}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->wrapSupportMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportMenu;)Landroid/view/Menu;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mMenus:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getActionModeWrapper(Lcom/oneplus/lib/app/appcompat/ActionMode;)Landroid/view/ActionMode;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;-><init>(Landroid/content/Context;Lcom/oneplus/lib/app/appcompat/ActionMode;)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onActionItemClicked(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lcom/oneplus/lib/app/appcompat/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    move-object v3, p2

    check-cast v3, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-static {v2, v3}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->wrapSupportMenuItem(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportMenuItem;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lcom/oneplus/lib/app/appcompat/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->getMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lcom/oneplus/lib/app/appcompat/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onPrepareActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lcom/oneplus/lib/app/appcompat/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;->getMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
