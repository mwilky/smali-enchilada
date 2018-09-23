.class abstract Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
.super Ljava/lang/Object;
.source "ColorBalanceService.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AutoMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method private constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    return-void
.end method


# virtual methods
.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method
