.class public Lcom/android/setupwizardlib/util/Partner$ResourceEntry;
.super Ljava/lang/Object;
.source "Partner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/util/Partner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceEntry"
.end annotation


# instance fields
.field public id:I

.field public isOverlay:Z

.field public resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;IZ)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "isOverlay"    # Z

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    .line 128
    iput p2, p0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->id:I

    .line 129
    iput-boolean p3, p0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->isOverlay:Z

    .line 130
    return-void
.end method
