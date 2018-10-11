.class public abstract Lcom/oneplus/screenshot/longshot/reject/Reject;
.super Ljava/lang/Object;
.source "Reject.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/oneplus/screenshot/longshot/reject/Reject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/reject/Reject;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/reject/Reject;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 1

    const v0, 0x7f0c0013

    return v0
.end method

.method public abstract isReject()Z
.end method
