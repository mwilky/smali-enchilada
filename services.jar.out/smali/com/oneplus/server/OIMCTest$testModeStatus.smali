.class Lcom/oneplus/server/OIMCTest$testModeStatus;
.super Ljava/lang/Object;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "testModeStatus"
.end annotation


# instance fields
.field enteredModeNames:[Ljava/lang/String;

.field exitedModeNames:[Ljava/lang/String;

.field testValue:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/oneplus/server/OIMCTest;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/server/OIMCTest;
    .param p2, "enNames"    # [Ljava/lang/String;
    .param p3, "exNames"    # [Ljava/lang/String;
    .param p4, "value"    # I

    .line 186
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$testModeStatus;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testModeStatus;->testValue:Ljava/lang/Integer;

    .line 188
    iput-object p2, p0, Lcom/oneplus/server/OIMCTest$testModeStatus;->enteredModeNames:[Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lcom/oneplus/server/OIMCTest$testModeStatus;->exitedModeNames:[Ljava/lang/String;

    .line 190
    return-void
.end method


# virtual methods
.method public checkModeStatus()Z
    .locals 6

    .line 193
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 195
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 196
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Lcom/oneplus/server/OIMCTest$testModeStatus$1;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$testModeStatus$1;-><init>(Lcom/oneplus/server/OIMCTest$testModeStatus;Lcom/oneplus/server/MsgObjectArg;)V

    .line 227
    .local v2, "check":Lcom/oneplus/server/OIMCTest$checkSysInfo;
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest$testModeStatus;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lcom/oneplus/server/OIMCTest;->access$000(Lcom/oneplus/server/OIMCTest;ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    .line 228
    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;->getResult()I

    move-result v3

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5
.end method
