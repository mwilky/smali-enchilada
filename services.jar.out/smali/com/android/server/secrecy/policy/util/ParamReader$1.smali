.class Lcom/android/server/secrecy/policy/util/ParamReader$1;
.super Ljava/lang/Object;
.source "ParamReader.java"

# interfaces
.implements Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamBufCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/secrecy/policy/util/ParamReader;->getUpgradeTime()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/secrecy/policy/util/ParamReader;->access$002(Z)Z

    invoke-static {p2}, Lcom/android/server/secrecy/policy/util/ParamReader;->access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-void
.end method
