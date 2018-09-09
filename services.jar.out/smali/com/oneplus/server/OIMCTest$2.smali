.class Lcom/oneplus/server/OIMCTest$2;
.super Lcom/oneplus/server/OIMCTest$checkSysInfo;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/OIMCTest;->checkContainedModes([Ljava/lang/String;)Z
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

    .line 133
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$2;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCTest$2;->getArg()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/ModeManager;

    .line 137
    .local v0, "mm":Lcom/oneplus/server/ModeManager;
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCTest$2;->getArg()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 138
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/server/OIMCTest$2;->setResult(I)V

    .line 140
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 141
    aget-object v4, v1, v3

    .line 142
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v5

    if-nez v5, :cond_0

    .line 143
    invoke-virtual {p0, v2}, Lcom/oneplus/server/OIMCTest$2;->setResult(I)V

    .line 144
    goto :goto_1

    .line 140
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return-void
.end method
