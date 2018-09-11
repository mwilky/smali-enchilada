.class public Landroid/support/v17/leanback/widget/GuidedActionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GuidedActionAdapter.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionAutofillListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUG_EDIT:Z = false

.field static final TAG:Ljava/lang/String; = "GuidedActionAdapter"

.field static final TAG_EDIT:Ljava/lang/String; = "EditableAction"


# instance fields
.field private final mActionAutofillListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionAutofillListener;

.field private final mActionEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

.field private final mActionOnFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

.field private final mActionOnKeyListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

.field mDiffCallback:Landroid/support/v17/leanback/widget/DiffCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v17/leanback/widget/DiffCallback<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

.field private final mIsSubAdapter:Z

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field final mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;Landroid/support/v17/leanback/widget/GuidedActionsStylist;Z)V
    .locals 2
    .param p2, "clickListener"    # Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;
    .param p3, "focusListener"    # Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;
    .param p4, "presenter"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    .param p5, "isSubAdapter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;",
            "Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;",
            "Landroid/support/v17/leanback/widget/GuidedActionsStylist;",
            "Z)V"
        }
    .end annotation

    .line 144
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 112
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 145
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    .line 147
    iput-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mClickListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

    .line 148
    iput-object p4, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    .line 149
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnKeyListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

    .line 150
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-direct {v0, p0, p3}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    .line 151
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

    .line 152
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionAutofillListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionAutofillListener;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionAutofillListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionAutofillListener;

    .line 153
    iput-boolean p5, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mIsSubAdapter:Z

    .line 154
    if-nez p5, :cond_1

    .line 155
    invoke-static {}, Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;->getInstance()Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroid/support/v17/leanback/widget/DiffCallback;

    .line 157
    :cond_1
    return-void
.end method

.method static synthetic access$100(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 45
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    return-object v0
.end method

.method private setupListeners(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "edit"    # Landroid/widget/EditText;

    .line 316
    if-eqz p1, :cond_1

    .line 317
    const-string v0, "EscapeNorth=1;"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 319
    instance-of v0, p1, Landroid/support/v17/leanback/widget/ImeKeyMonitor;

    if-eqz v0, :cond_0

    .line 320
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ImeKeyMonitor;

    .line 321
    .local v0, "monitor":Landroid/support/v17/leanback/widget/ImeKeyMonitor;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/ImeKeyMonitor;->setImeKeyListener(Landroid/support/v17/leanback/widget/ImeKeyMonitor$ImeKeyListener;)V

    .line 323
    .end local v0    # "monitor":Landroid/support/v17/leanback/widget/ImeKeyMonitor;
    :cond_0
    instance-of v0, p1, Landroid/support/v17/leanback/widget/GuidedActionAutofillSupport;

    if-eqz v0, :cond_1

    .line 324
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionAutofillSupport;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionAutofillListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionAutofillListener;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionAutofillSupport;->setOnAutofillListener(Landroid/support/v17/leanback/widget/GuidedActionAutofillSupport$OnAutofillListener;)V

    .line 327
    :cond_1
    return-void
.end method


# virtual methods
.method public findSubChildViewHolder(Landroid/view/View;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 402
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 403
    const/4 v0, 0x0

    return-object v0

    .line 405
    :cond_0
    const/4 v0, 0x0

    .line 406
    .local v0, "result":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 407
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 408
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    .line 409
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 411
    :cond_1
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 412
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 414
    :cond_2
    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 233
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    .locals 1

    .line 258
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    return-object v0
.end method

.method public getItem(I)Landroid/support/v17/leanback/widget/GuidedAction;
    .locals 1
    .param p1, "position"    # I

    .line 242
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedAction;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 347
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 291
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getItemViewType(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result v0

    return v0
.end method

.method getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 295
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mIsSubAdapter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getSubActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public handleCheckedActions(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 9
    .param p1, "avh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 418
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    .line 419
    .local v0, "action":Landroid/support/v17/leanback/widget/GuidedAction;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v1

    .line 420
    .local v1, "actionCheckSetId":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 423
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 424
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v5, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 425
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v17/leanback/widget/GuidedAction;

    .line 426
    .local v6, "a":Landroid/support/v17/leanback/widget/GuidedAction;
    if-eq v6, v0, :cond_0

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v7

    if-ne v7, v1, :cond_0

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 427
    invoke-virtual {v6, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->setChecked(Z)V

    .line 428
    nop

    .line 429
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    check-cast v7, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 430
    .local v7, "vh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    if-eqz v7, :cond_0

    .line 431
    iget-object v8, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v8, v7, v3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemChecked(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 424
    .end local v6    # "a":Landroid/support/v17/leanback/widget/GuidedAction;
    .end local v7    # "vh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_1
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    .line 439
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/GuidedAction;->setChecked(Z)V

    .line 440
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v3, p1, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemChecked(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    goto :goto_1

    .line 442
    :cond_2
    if-ne v1, v2, :cond_3

    .line 443
    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->setChecked(Z)V

    .line 444
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v2, p1, v3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemChecked(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 448
    :cond_3
    :goto_1
    return-void
.end method

.method public indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I
    .locals 1
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 251
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 334
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 335
    return-void

    .line 337
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 338
    .local v0, "avh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedAction;

    .line 339
    .local v1, "action":Landroid/support/v17/leanback/widget/GuidedAction;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onBindViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 340
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 303
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v0

    .line 304
    .local v0, "vh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    iget-object v1, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    .line 305
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnKeyListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 306
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 309
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableTitleView()Landroid/widget/EditText;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setupListeners(Landroid/widget/EditText;)V

    .line 310
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableDescriptionView()Landroid/widget/EditText;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setupListeners(Landroid/widget/EditText;)V

    .line 312
    return-object v0
.end method

.method public performOnActionClick(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 2
    .param p1, "avh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 451
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mClickListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mClickListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;->onGuidedActionClicked(Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 454
    :cond_0
    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mIsSubAdapter:Z

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->collapseAction(Z)V

    .line 178
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->unFocus()V

    .line 179
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroid/support/v17/leanback/widget/DiffCallback;

    if-eqz v0, :cond_1

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "oldActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 186
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    new-instance v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter$2;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$2;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Ljava/util/List;)V

    invoke-static {v1}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v1

    .line 220
    .local v1, "diffResult":Landroid/support/v7/util/DiffUtil$DiffResult;
    invoke-virtual {v1, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 221
    .end local v0    # "oldActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    .end local v1    # "diffResult":Landroid/support/v7/util/DiffUtil$DiffResult;
    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->notifyDataSetChanged()V

    .line 226
    :goto_0
    return-void
.end method

.method public setClickListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

    .line 266
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mClickListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

    .line 267
    return-void
.end method

.method public setDiffCallback(Landroid/support/v17/leanback/widget/DiffCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v17/leanback/widget/DiffCallback<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "diffCallback":Landroid/support/v17/leanback/widget/DiffCallback;, "Landroid/support/v17/leanback/widget/DiffCallback<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroid/support/v17/leanback/widget/DiffCallback;

    .line 167
    return-void
.end method

.method public setFocusListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;)V
    .locals 1
    .param p1, "focusListener"    # Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;

    .line 274
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->setFocusListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;)V

    .line 275
    return-void
.end method
