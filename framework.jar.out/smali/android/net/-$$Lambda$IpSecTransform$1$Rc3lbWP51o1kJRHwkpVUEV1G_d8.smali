.class public final synthetic Landroid/net/-$$Lambda$IpSecTransform$1$Rc3lbWP51o1kJRHwkpVUEV1G_d8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/IpSecTransform$1;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpSecTransform$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpSecTransform$1$Rc3lbWP51o1kJRHwkpVUEV1G_d8;->f$0:Landroid/net/IpSecTransform$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/-$$Lambda$IpSecTransform$1$Rc3lbWP51o1kJRHwkpVUEV1G_d8;->f$0:Landroid/net/IpSecTransform$1;

    invoke-static {v0}, Landroid/net/IpSecTransform$1;->lambda$onStopped$1(Landroid/net/IpSecTransform$1;)V

    return-void
.end method
