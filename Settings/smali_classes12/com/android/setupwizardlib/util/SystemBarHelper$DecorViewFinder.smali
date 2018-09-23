.class Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/util/SystemBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecorViewFinder"
.end annotation


# instance fields
.field private mCallback:Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;

.field private mCheckDecorViewRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mRetries:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;-><init>(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->mCheckDecorViewRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/setupwizardlib/util/SystemBarHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->mCallback:Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)I
    .locals 1

    iget v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->mRetries:I

    return v0
.end method

.method static synthetic access$410(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)I
    .locals 2

    iget v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->mRetries:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->mRetries:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->mCheckDecorViewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getDecorView(Landroid/view/Window;Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->mWindow:Landroid/view/Window;

    iput p3, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->mRetries:I

    iput-object p2, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->mCallback:Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;

    iget-object v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->mCheckDecorViewRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
