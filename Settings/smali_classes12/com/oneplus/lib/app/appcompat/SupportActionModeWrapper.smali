.class public Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;
.super Landroid/view/ActionMode;
.source "SupportActionModeWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/app/appcompat/ActionMode;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->finish()V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/SupportMenu;

    invoke-static {v0, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->wrapSupportMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportMenu;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getTitleOptionalHint()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->invalidate()V

    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setSubtitle(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setTitleOptionalHint(Z)V

    return-void
.end method
