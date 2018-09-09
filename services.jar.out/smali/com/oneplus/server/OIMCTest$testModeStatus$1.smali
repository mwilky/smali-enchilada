.class Lcom/oneplus/server/OIMCTest$testModeStatus$1;
.super Lcom/oneplus/server/OIMCTest$checkSysInfo;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/server/OIMCTest$testModeStatus;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCTest$testModeStatus;Lcom/oneplus/server/MsgObjectArg;)V
    .locals 1
    .param p1, "this$1"    # Lcom/oneplus/server/OIMCTest$testModeStatus;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 196
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$testModeStatus$1;->this$1:Lcom/oneplus/server/OIMCTest$testModeStatus;

    iget-object v0, p1, Lcom/oneplus/server/OIMCTest$testModeStatus;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 199
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCTest$testModeStatus$1;->getArg()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/ModeManager;

    .line 200
    .local v0, "mm":Lcom/oneplus/server/ModeManager;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCTest$testModeStatus$1;->setResult(I)V

    .line 202
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest$testModeStatus$1;->this$1:Lcom/oneplus/server/OIMCTest$testModeStatus;

    iget-object v4, v4, Lcom/oneplus/server/OIMCTest$testModeStatus;->enteredModeNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 203
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest$testModeStatus$1;->this$1:Lcom/oneplus/server/OIMCTest$testModeStatus;

    iget-object v4, v4, Lcom/oneplus/server/OIMCTest$testModeStatus;->enteredModeNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v4

    .line 204
    .local v4, "mode":Lcom/oneplus/server/SceneMode;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 209
    :cond_0
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest$testModeStatus$1;->this$1:Lcom/oneplus/server/OIMCTest$testModeStatus;

    iget-object v5, v5, Lcom/oneplus/server/OIMCTest$testModeStatus;->testValue:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    invoke-virtual {v4}, Lcom/oneplus/server/SceneMode;->getRinfo()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/oneplus/server/SceneMode;->getRinfo()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/server/OIMCTest$testModeStatus$1;->this$1:Lcom/oneplus/server/OIMCTest$testModeStatus;

    iget-object v6, v6, Lcom/oneplus/server/OIMCTest$testModeStatus;->testValue:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 211
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oneplus/server/OIMCTest$testModeStatus$1;->setResult(I)V

    .line 212
    goto :goto_2

    .line 202
    .end local v4    # "mode":Lcom/oneplus/server/SceneMode;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .restart local v4    # "mode":Lcom/oneplus/server/SceneMode;
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/oneplus/server/OIMCTest$testModeStatus$1;->setResult(I)V

    .line 206
    nop

    .line 217
    .end local v3    # "i":I
    .end local v4    # "mode":Lcom/oneplus/server/SceneMode;
    :cond_4
    :goto_2
    move v3, v2

    .restart local v3    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest$testModeStatus$1;->this$1:Lcom/oneplus/server/OIMCTest$testModeStatus;

    iget-object v4, v4, Lcom/oneplus/server/OIMCTest$testModeStatus;->exitedModeNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_7

    .line 218
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest$testModeStatus$1;->this$1:Lcom/oneplus/server/OIMCTest$testModeStatus;

    iget-object v4, v4, Lcom/oneplus/server/OIMCTest$testModeStatus;->exitedModeNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v4

    .line 219
    .restart local v4    # "mode":Lcom/oneplus/server/SceneMode;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v5

    if-eq v5, v1, :cond_5

    goto :goto_4

    .line 217
    .end local v4    # "mode":Lcom/oneplus/server/SceneMode;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 220
    .restart local v4    # "mode":Lcom/oneplus/server/SceneMode;
    :cond_6
    :goto_4
    invoke-virtual {p0, v2}, Lcom/oneplus/server/OIMCTest$testModeStatus$1;->setResult(I)V

    .line 221
    nop

    .line 224
    .end local v3    # "i":I
    .end local v4    # "mode":Lcom/oneplus/server/SceneMode;
    :cond_7
    return-void
.end method
