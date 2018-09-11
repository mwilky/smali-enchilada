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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method private updateTextIntoAction(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "avh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "v"    # Landroid/widget/TextView;

    .line 180
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    .line 181
    .local v0, "action":Landroid/support/v17/leanback/widget/GuidedAction;
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 182
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction;->setEditDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    if-ne p2, v1, :cond_3

    .line 188
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction;->setEditTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addAdpter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V
    .locals 2
    .param p1, "adapter1"    # Landroid/support/v17/leanback/widget/GuidedActionAdapter;
    .param p2, "adapter2"    # Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 47
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    if-eqz p1, :cond_0

    .line 49
    iput-object p0, p1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    .line 51
    :cond_0
    if-eqz p2, :cond_1

    .line 52
    iput-object p0, p2, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    .line 54
    :cond_1
    return-void
.end method

.method public closeIme(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 142
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    .line 144
    nop

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 146
    .local v1, "mgr":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 147
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onImeClose()V

    .line 149
    .end local v1    # "mgr":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public fillAndGoNext(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V
    .locals 6
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/GuidedActionAdapter;
    .param p2, "v"    # Landroid/widget/TextView;

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "handled":Z
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->findSubChildViewHolder(Landroid/view/View;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v1

    .line 163
    .local v1, "avh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    invoke-direct {p0, v1, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->updateTextIntoAction(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V

    .line 164
    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->performOnActionClick(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    .line 165
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditedAndProceed(Landroid/support/v17/leanback/widget/GuidedAction;)J

    move-result-wide v2

    .line 166
    .local v2, "nextActionId":J
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 167
    const-wide/16 v4, -0x3

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 168
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 169
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v2, v3}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->focusToNextAction(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedAction;J)Z

    move-result v0

    .line 171
    :cond_0
    if-nez v0, :cond_1

    .line 173
    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    .line 175
    iget-object v4, v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 177
    :cond_1
    return-void
.end method

.method public fillAndStay(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/GuidedActionAdapter;
    .param p2, "v"    # Landroid/widget/TextView;

    .line 152
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->findSubChildViewHolder(Landroid/view/View;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v0

    .line 153
    .local v0, "avh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    invoke-direct {p0, v0, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->updateTextIntoAction(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V

    .line 154
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditCanceled(Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 155
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 156
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    .line 157
    iget-object v1, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 158
    return-void
.end method

.method focusToNextAction(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedAction;J)Z
    .locals 8
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/GuidedActionAdapter;
    .param p2, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;
    .param p3, "nextActionId"    # J

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "index":I
    const-wide/16 v1, -0x2

    cmp-long v3, p3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 74
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result v0

    .line 75
    if-gez v0, :cond_0

    .line 76
    return v4

    .line 79
    :cond_0
    add-int/2addr v0, v5

    .line 83
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getCount()I

    move-result v3

    .line 84
    .local v3, "size":I
    cmp-long v6, p3, v1

    if-nez v6, :cond_2

    .line 85
    :goto_1
    if-ge v0, v3, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getItem(I)Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/GuidedAction;->isFocusable()Z

    move-result v6

    if-nez v6, :cond_3

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_2
    :goto_2
    if-ge v0, v3, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getItem(I)Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v6

    cmp-long v6, v6, p3

    if-eqz v6, :cond_3

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 93
    :cond_3
    if-ge v0, v3, :cond_6

    .line 94
    nop

    .line 95
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 97
    .local v1, "vh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    if-eqz v1, :cond_5

    .line 98
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedAction;->hasTextEditable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    invoke-virtual {p0, p1, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->openIme(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    goto :goto_3

    .line 105
    :cond_4
    iget-object v2, v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    .line 106
    iget-object v2, v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 108
    :goto_3
    return v5

    .line 110
    :cond_5
    return v4

    .line 113
    .end local v1    # "vh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    :cond_6
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->getNextAdapter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    move-result-object p1

    .line 114
    if-nez p1, :cond_7

    .line 115
    nop

    .line 119
    .end local v3    # "size":I
    return v4

    .line 117
    .restart local v3    # "size":I
    :cond_7
    const/4 v0, 0x0

    .line 118
    .end local v3    # "size":I
    goto :goto_0
.end method

.method public getNextAdapter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)Landroid/support/v17/leanback/widget/GuidedActionAdapter;
    .locals 3
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 58
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 59
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 60
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    return-object v2

    .line 57
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public openIme(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 4
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/GuidedActionAdapter;
    .param p2, "avh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 123
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 124
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditingView()Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->isInEditingText()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    nop

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 132
    .local v2, "mgr":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 134
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 135
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    if-nez v3, :cond_1

    .line 136
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    .line 137
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onImeOpen()V

    .line 139
    :cond_1
    return-void

    .line 126
    .end local v2    # "mgr":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    :goto_0
    return-void
.end method

.method public setEditListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    .line 67
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    .line 68
    return-void
.end method
