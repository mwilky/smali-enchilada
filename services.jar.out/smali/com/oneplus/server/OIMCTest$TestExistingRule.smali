.class Lcom/oneplus/server/OIMCTest$TestExistingRule;
.super Ljava/lang/Object;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestExistingRule"
.end annotation


# instance fields
.field funcName:Ljava/lang/String;

.field modeNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rInfo:Ljava/lang/Integer;

.field request:I

.field final synthetic this$0:Lcom/oneplus/server/OIMCTest;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$TestExistingRule;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$TestExistingRule;->rInfo:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/oneplus/server/OIMCTest$TestExistingRule;->modeNames:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/oneplus/server/OIMCTest$TestExistingRule;->funcName:Ljava/lang/String;

    iput p4, p0, Lcom/oneplus/server/OIMCTest$TestExistingRule;->request:I

    return-void
.end method


# virtual methods
.method public checkExistingRule()Z
    .locals 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    new-instance v2, Lcom/oneplus/server/OIMCTest$TestExistingRule$1;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$TestExistingRule$1;-><init>(Lcom/oneplus/server/OIMCTest$TestExistingRule;Lcom/oneplus/server/MsgObjectArg;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest$TestExistingRule;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v3, v5, v0, v4}, Lcom/oneplus/server/OIMCTest;->access$000(Lcom/oneplus/server/OIMCTest;ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;->getResult()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method
