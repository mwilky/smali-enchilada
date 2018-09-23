.class public Lcom/oneplus/server/ColorManager;
.super Ljava/lang/Object;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/server/ColorManager$ColorDisable;,
        Lcom/oneplus/server/ColorManager$ColorBalance;,
        Lcom/oneplus/server/ColorManager$GrayColor;
    }
.end annotation


# static fields
.field private static final Activated_COLORBALANCE:I = 0x1

.field private static final Activated_GRAYCOLOR:I = 0x2

.field private static final Activated_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorManager"


# instance fields
.field public mCBActivated:Z

.field private mCBM:Lcom/oneplus/display/ColorBalanceManager;

.field public mColorBalance:Lcom/oneplus/server/ColorManager$ColorBalance;

.field public mColorBalanceFastActivated:Z

.field public mColorDisable:Lcom/oneplus/server/ColorManager$ColorDisable;

.field private mContext:Landroid/content/Context;

.field public mCurrentActivated:I

.field public mGCActiviated:Z

.field public mGrayColor:Lcom/oneplus/server/ColorManager$GrayColor;

.field public mGrayColorFastActivated:Z

.field public mSwitch:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/ColorManager;->mCBActivated:Z

    iput-boolean v0, p0, Lcom/oneplus/server/ColorManager;->mGCActiviated:Z

    iput-boolean v0, p0, Lcom/oneplus/server/ColorManager;->mGrayColorFastActivated:Z

    iput-boolean v0, p0, Lcom/oneplus/server/ColorManager;->mColorBalanceFastActivated:Z

    iput v0, p0, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    const-string/jumbo v0, "normal"

    iput-object v0, p0, Lcom/oneplus/server/ColorManager;->mSwitch:Ljava/lang/String;

    new-instance v0, Lcom/oneplus/display/ColorBalanceManager;

    invoke-direct {v0, p1}, Lcom/oneplus/display/ColorBalanceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/server/ColorManager;->mCBM:Lcom/oneplus/display/ColorBalanceManager;

    iput-object p1, p0, Lcom/oneplus/server/ColorManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/server/ColorManager$GrayColor;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/server/ColorManager$GrayColor;-><init>(Lcom/oneplus/server/ColorManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/server/ColorManager;->mGrayColor:Lcom/oneplus/server/ColorManager$GrayColor;

    new-instance v0, Lcom/oneplus/server/ColorManager$ColorBalance;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/server/ColorManager$ColorBalance;-><init>(Lcom/oneplus/server/ColorManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/server/ColorManager;->mColorBalance:Lcom/oneplus/server/ColorManager$ColorBalance;

    new-instance v0, Lcom/oneplus/server/ColorManager$ColorDisable;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/server/ColorManager$ColorDisable;-><init>(Lcom/oneplus/server/ColorManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/server/ColorManager;->mColorDisable:Lcom/oneplus/server/ColorManager$ColorDisable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/ColorManager;->mCBM:Lcom/oneplus/display/ColorBalanceManager;

    return-object v0
.end method
