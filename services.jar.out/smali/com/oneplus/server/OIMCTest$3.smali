.class Lcom/oneplus/server/OIMCTest$3;
.super Lcom/oneplus/server/OIMCTest$checkSysInfo;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/OIMCTest;->checkModePriority(Ljava/lang/String;I)Z
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

    .line 166
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$3;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 169
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCTest$3;->getArg()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/ModeManager;

    .line 170
    .local v0, "mm":Lcom/oneplus/server/ModeManager;
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCTest$3;->getArg()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/server/OIMCTest$1checkModePrio;

    .line 171
    .local v1, "ck":Lcom/oneplus/server/OIMCTest$1checkModePrio;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/server/OIMCTest$3;->setResult(I)V

    .line 173
    iget-object v2, v1, Lcom/oneplus/server/OIMCTest$1checkModePrio;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getPrio()I

    move-result v2

    iget v3, v1, Lcom/oneplus/server/OIMCTest$1checkModePrio;->prio:I

    if-ne v2, v3, :cond_0

    .line 174
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/server/OIMCTest$3;->setResult(I)V

    .line 175
    :cond_0
    return-void
.end method
