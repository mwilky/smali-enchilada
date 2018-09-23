.class public Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;
.super Ljava/lang/Object;
.source "GuidedActionAdapterGroup.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEBUG_EDIT:Z = false

.field private static final TAG_EDIT:Ljava/lang/String; = "EditableAction"


# instance fields
.field mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/support/v17/leanback/widget/GuidedActionAdapter;",
            "Landroid/support/v17/leanback/widget/GuidedActionAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

.field private mImeOpened:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method private updateTextIntoAction(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v1

    if-ne p2, v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction;->setEditDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    if-ne p2, v1, :cond_3

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction;->setEditTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addAdpter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    iput-object p0, p1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p0, p2, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    :cond_1
    return-void
.end method

.method public closeIme(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    nop

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onImeClose()V

    :cond_0
    return-void
.end method

.method public fillAndGoNext(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->findSubChildViewHolder(Landroid/view/View;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->updateTextIntoAction(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->performOnActionClick(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditedAndProceed(Landroid/support/v17/leanback/widget/GuidedAction;)J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    const-wide/16 v4, -0x3

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v2, v3}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->focusToNextAction(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedAction;J)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    iget-object v4, v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public fillAndStay(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->findSubChildViewHolder(Landroid/view/View;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->updateTextIntoAction(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditCanceled(Landroid/support/v17/leanback/widget/GuidedAction;)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    iget-object v1, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method focusToNextAction(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedAction;J)Z
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, -0x2

    cmp-long v3, p3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result v0

    if-gez v0, :cond_0

    return v4

    :cond_0
    add-int/2addr v0, v5

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getCount()I

    move-result v3

    cmp-long v6, p3, v1

    if-nez v6, :cond_2

    :goto_1
    if-ge v0, v3, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getItem(I)Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/GuidedAction;->isFocusable()Z

    move-result v6

    if-nez v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v0, v3, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getItem(I)Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v6

    cmp-long v6, v6, p3

    if-eqz v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-ge v0, v3, :cond_6

    nop

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedAction;->hasTextEditable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->openIme(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    goto :goto_3

    :cond_4
    iget-object v2, v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :goto_3
    return v5

    :cond_5
    return v4

    :cond_6
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->getNextAdapter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    move-result-object p1

    if-nez p1, :cond_7

    nop

    return v4

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextAdapter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)Landroid/support/v17/leanback/widget/GuidedActionAdapter;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public openIme(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 4

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditingView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->isInEditingText()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    if-nez v3, :cond_1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onImeOpen()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setEditListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    return-void
.end method
