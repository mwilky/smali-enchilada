.class Lcom/oneplus/server/OIMCTest$4;
.super Lcom/oneplus/server/OIMCTest$checkSysInfo;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/OIMCTest;->clearOIMCTestModes()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OIMCTest;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/server/OIMCTest;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 239
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$4;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 242
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCTest$4;->getArg()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0}, Lcom/oneplus/server/ModeManager;->getModeTable()Ljava/util/HashMap;

    move-result-object v0

    .line 244
    .local v0, "mtbl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oneplus/server/SceneMode;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 245
    .local v2, "name":Ljava/lang/String;
    const-string v3, "OIMCTestMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "OIMCTestMode2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "OIMCTestMode3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v3}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 247
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    .line 248
    .local v3, "iarg":Lcom/oneplus/server/MsgObjectArg;
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest$4;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v5}, Lcom/oneplus/server/OIMCTest;->access$100(Lcom/oneplus/server/OIMCTest;)Lcom/oneplus/server/OIMCService;

    move-result-object v5

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    .line 250
    invoke-virtual {v3, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 248
    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v7, v6}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 252
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "iarg":Lcom/oneplus/server/MsgObjectArg;
    :cond_1
    goto :goto_0

    .line 253
    :cond_2
    return-void
.end method
