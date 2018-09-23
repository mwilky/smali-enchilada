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
    .param p3    # I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->this$0:Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->status:I

    iput p3, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->legacyStatus:I

    iput-object p4, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->message:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;IILjava/lang/String;Lcom/oneplus/settings/packageuninstaller/EventResultPersister$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;-><init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;IILjava/lang/String;)V

    return-void
.end method
