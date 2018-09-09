.class public Lcom/oneplus/server/FingerprintGestureLimit;
.super Ljava/lang/Object;
.source "FingerprintGestureLimit.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintGestureLimit"

.field private static mInstance:Lcom/oneplus/server/FingerprintGestureLimit;


# instance fields
.field mLimited:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/FingerprintGestureLimit;->mLimited:Z

    .line 26
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/oneplus/server/FingerprintGestureLimit;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    sget-object v0, Lcom/oneplus/server/FingerprintGestureLimit;->mInstance:Lcom/oneplus/server/FingerprintGestureLimit;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/oneplus/server/FingerprintGestureLimit;

    invoke-direct {v0, p0}, Lcom/oneplus/server/FingerprintGestureLimit;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/server/FingerprintGestureLimit;->mInstance:Lcom/oneplus/server/FingerprintGestureLimit;

    .line 32
    :cond_0
    sget-object v0, Lcom/oneplus/server/FingerprintGestureLimit;->mInstance:Lcom/oneplus/server/FingerprintGestureLimit;

    return-object v0
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isLimited()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/oneplus/server/FingerprintGestureLimit;->mLimited:Z

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/server/FingerprintGestureLimit;->mLimited:Z

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/FingerprintGestureLimit;->mLimited:Z

    .line 44
    return v0
.end method
