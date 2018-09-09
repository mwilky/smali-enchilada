.class Lcom/oneplus/server/OIMCTest$1checkModePrio;
.super Ljava/lang/Object;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/OIMCTest;->checkModePriority(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "checkModePrio"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field prio:I

.field final synthetic this$0:Lcom/oneplus/server/OIMCTest;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/server/OIMCTest;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prio"    # I

    .line 158
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$1checkModePrio;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/oneplus/server/OIMCTest$1checkModePrio;->name:Ljava/lang/String;

    .line 160
    iput p3, p0, Lcom/oneplus/server/OIMCTest$1checkModePrio;->prio:I

    .line 161
    return-void
.end method
