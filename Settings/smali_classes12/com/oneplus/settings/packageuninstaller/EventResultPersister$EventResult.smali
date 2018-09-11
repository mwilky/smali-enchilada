.class Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;
.super Ljava/lang/Object;
.source "EventResultPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/packageuninstaller/EventResultPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventResult"
.end annotation


# instance fields
.field public final legacyStatus:I

.field public final message:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final status:I

.field final synthetic this$0:Lcom/oneplus/settings/packageuninstaller/EventResultPersister;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;IILjava/lang/String;)V
    .locals 0
    .param p2, "status"    # I
    .param p3, "legacyStatus"    # I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "message"    # Ljava/lang/String;

    .line 345
    iput-object p1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->this$0:Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput p2, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->status:I

    .line 347
    iput p3, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->legacyStatus:I

    .line 348
    iput-object p4, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->message:Ljava/lang/String;

    .line 349
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;IILjava/lang/String;Lcom/oneplus/settings/packageuninstaller/EventResultPersister$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/packageuninstaller/EventResultPersister;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/oneplus/settings/packageuninstaller/EventResultPersister$1;

    .line 340
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;-><init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;IILjava/lang/String;)V

    return-void
.end method
