.class Lcom/oneplus/server/OIMCTest$testRepeatFunc2;
.super Lcom/oneplus/server/OIMCTest$testFuncChange;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "testRepeatFunc2"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/server/OIMCTest;


# direct methods
.method private constructor <init>(Lcom/oneplus/server/OIMCTest;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCTest$testFuncChange;-><init>(Lcom/oneplus/server/OIMCTest;)V

    .line 403
    const-string p1, "TestRepeatFunc2"

    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->TAG:Ljava/lang/String;

    .line 404
    const-string p1, "TestRepeatFunc2"

    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/OIMCTest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/server/OIMCTest;
    .param p2, "x1"    # Lcom/oneplus/server/OIMCTest$1;

    .line 402
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;-><init>(Lcom/oneplus/server/OIMCTest;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/server/OIMCTest$testRepeatFunc2;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    .line 402
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .line 407
    const-string v0, "TestRepeatFunc2"

    return-object v0
.end method
