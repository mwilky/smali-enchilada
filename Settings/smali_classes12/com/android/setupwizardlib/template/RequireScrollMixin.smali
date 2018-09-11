.class public Lcom/android/setupwizardlib/template/RequireScrollMixin;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;,
        Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;

.field private mEverScrolledToBottom:Z

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRequiringScrollToBottom:Z

.field private final mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .locals 2
    .param p1, "templateLayout"    # Lcom/android/setupwizardlib/TemplateLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mHandler:Landroid/os/Handler;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mEverScrolledToBottom:Z

    .line 93
    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/setupwizardlib/template/RequireScrollMixin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .line 35
    iget-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/setupwizardlib/template/RequireScrollMixin;)Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .line 35
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mDelegate:Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/setupwizardlib/template/RequireScrollMixin;)Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .line 35
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mListener:Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-object v0
.end method

.method private postScrollStateChange(Z)V
    .locals 2
    .param p1, "scrollNeeded"    # Z

    .line 251
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;

    invoke-direct {v1, p0, p1}, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method


# virtual methods
.method public createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 133
    new-instance v0, Lcom/android/setupwizardlib/template/RequireScrollMixin$1;

    invoke-direct {v0, p0, p1}, Lcom/android/setupwizardlib/template/RequireScrollMixin$1;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public getOnRequireScrollStateChangedListener()Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mListener:Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-object v0
.end method

.method public isScrollingRequired()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    return v0
.end method

.method notifyScrollabilityChange(Z)V
    .locals 2
    .param p1, "canScrollDown"    # Z

    .line 234
    iget-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    if-ne p1, v0, :cond_0

    .line 236
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 239
    iget-boolean v1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mEverScrolledToBottom:Z

    if-nez v1, :cond_2

    .line 240
    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->postScrollStateChange(Z)V

    .line 241
    iput-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    goto :goto_0

    .line 244
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->postScrollStateChange(Z)V

    .line 245
    iput-boolean v1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    .line 246
    iput-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mEverScrolledToBottom:Z

    .line 248
    :cond_2
    :goto_0
    return-void
.end method

.method public requireScroll()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mDelegate:Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;

    invoke-interface {v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;->startListening()V

    .line 224
    return-void
.end method

.method public requireScrollWithButton(Landroid/widget/Button;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moreText"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 171
    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->requireScrollWithButton(Landroid/widget/Button;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method

.method public requireScrollWithButton(Landroid/widget/Button;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moreText"    # Ljava/lang/CharSequence;
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 197
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 198
    .local v0, "nextText":Ljava/lang/CharSequence;
    invoke-virtual {p0, p3}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v1, Lcom/android/setupwizardlib/template/RequireScrollMixin$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin$3;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/Button;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setOnRequireScrollStateChangedListener(Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->requireScroll()V

    .line 206
    return-void
.end method

.method public requireScrollWithNavigationBar(Lcom/android/setupwizardlib/view/NavigationBar;)V
    .locals 2
    .param p1, "navigationBar"    # Lcom/android/setupwizardlib/view/NavigationBar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 150
    new-instance v0, Lcom/android/setupwizardlib/template/RequireScrollMixin$2;

    invoke-direct {v0, p0, p1}, Lcom/android/setupwizardlib/template/RequireScrollMixin$2;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Lcom/android/setupwizardlib/view/NavigationBar;)V

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setOnRequireScrollStateChangedListener(Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V

    .line 160
    invoke-virtual {p1}, Lcom/android/setupwizardlib/view/NavigationBar;->getMoreButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->requireScroll()V

    .line 162
    return-void
.end method

.method public setOnRequireScrollStateChangedListener(Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 111
    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mListener:Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    .line 112
    return-void
.end method

.method public setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mDelegate:Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;

    .line 102
    return-void
.end method
