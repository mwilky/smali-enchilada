.class public final synthetic Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$5PUJBkKF3VANgkiEem5Oq8oyB6U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/lowpan/LowpanInterface$Callback;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$5PUJBkKF3VANgkiEem5Oq8oyB6U;->f$0:Landroid/net/lowpan/LowpanInterface$Callback;

    iput-object p2, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$5PUJBkKF3VANgkiEem5Oq8oyB6U;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$5PUJBkKF3VANgkiEem5Oq8oyB6U;->f$0:Landroid/net/lowpan/LowpanInterface$Callback;

    iget-object v1, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$5PUJBkKF3VANgkiEem5Oq8oyB6U;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onStateChanged$4(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V

    return-void
.end method
