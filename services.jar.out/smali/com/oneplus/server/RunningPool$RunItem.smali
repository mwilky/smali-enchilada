.class public Lcom/oneplus/server/RunningPool$RunItem;
.super Ljava/lang/Object;
.source "RunningPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/RunningPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunItem"
.end annotation


# instance fields
.field arg:Ljava/lang/Object;

.field func:Lcom/oneplus/oimc/IOPFunction;

.field funcName:Ljava/lang/String;

.field in_use:Z

.field isRemoteFunc:Z

.field next:Lcom/oneplus/server/RunningPool$RunItem;

.field providerKey:Ljava/lang/String;

.field rflag:I

.field final synthetic this$0:Lcom/oneplus/server/RunningPool;


# direct methods
.method public constructor <init>(Lcom/oneplus/server/RunningPool;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/RunningPool$RunItem;->this$0:Lcom/oneplus/server/RunningPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
