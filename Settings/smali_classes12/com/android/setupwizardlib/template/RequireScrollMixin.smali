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
    .param p1    # Lcom/android/setupwizardlib/TemplateLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    iput-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mEverScrolledToBottom:Z

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/android/setupwizardlib/template/RequireScrollMixin;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/setupwizardlib/template/RequireScrollMixin;)Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mDelegate:Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/setupwizardlib/template/RequireScrollMixin;)Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mListener:Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-object v0
.end method

.method private postScrollStateChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;

    invoke-direct {v1, p0, p1}, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/android/setupwizardlib/template/RequireScrollMixin$1;

    invoke-direct {v0, p0, p1}, Lcom/android/setupwizardlib/template/RequireScrollMixin$1;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public getOnRequireScrollStateChangedListener()Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mListener:Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-object v0
.end method

.method public isScrollingRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    return v0
.end method

.method notifyScrollabilityChange(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mEverScrolledToBottom:Z

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->postScrollStateChange(Z)V

    iput-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->postScrollStateChange(Z)V

    iput-boolean v1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    iput-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mEverScrolledToBottom:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public requireScroll()V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mDelegate:Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;

    invoke-interface {v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;->startListening()V

    return-void
.end method

.method public requireScrollWithButton(Landroid/widget/Button;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/widget/Button;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->requireScrollWithButton(Landroid/widget/Button;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public requireScrollWithButton(Landroid/widget/Button;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1    # Landroid/widget/Button;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/setupwizardlib/template/RequireScrollMixin$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin$3;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/Button;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setOnRequireScrollStateChangedListener(Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->requireScroll()V

    return-void
.end method

.method public requireScrollWithNavigationBar(Lcom/android/setupwizardlib/view/NavigationBar;)V
    .locals 2
    .param p1    # Lcom/android/setupwizardlib/view/NavigationBar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/android/setupwizardlib/template/RequireScrollMixin$2;

    invoke-direct {v0, p0, p1}, Lcom/android/setupwizardlib/template/RequireScrollMixin$2;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Lcom/android/setupwizardlib/view/NavigationBar;)V

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setOnRequireScrollStateChangedListener(Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V

    invoke-virtual {p1}, Lcom/android/setupwizardlib/view/NavigationBar;->getMoreButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->requireScroll()V

    return-void
.end method

.method public setOnRequireScrollStateChangedListener(Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V
    .locals 0
    .param p1    # Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mListener:Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-void
.end method

.method public setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V
    .locals 0
    .param p1    # Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mDelegate:Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;

    return-void
.end method
