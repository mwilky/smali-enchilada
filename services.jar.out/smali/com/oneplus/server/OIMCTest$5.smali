.class Lcom/oneplus/server/OIMCTest$5;
.super Lcom/oneplus/server/OIMCTest$checkSysInfo;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/OIMCTest;->checkRegisteredFunction(Ljava/lang/String;)Z
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

    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$5;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCTest$5;->getArg()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/FunctionManager;

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCTest$5;->getArg()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/server/OIMCTest$5;->setResult(I)V

    invoke-virtual {v0, v1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/server/OIMCTest$5;->setResult(I)V

    :cond_0
    return-void
.end method
