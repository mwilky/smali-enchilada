.class Lcom/oneplus/server/OIMCTest$6;
.super Lcom/oneplus/server/OIMCTest$checkSysInfo;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/OIMCTest;->getRuleCount()I
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

    .line 756
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$6;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 759
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCTest$6;->getArg()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/RuleManager;

    invoke-virtual {v0}, Lcom/oneplus/server/RuleManager;->getRuleCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCTest$6;->setResult(I)V

    .line 760
    return-void
.end method
