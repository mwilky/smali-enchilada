.class Landroid/security/keymaster/KeymasterBooleanArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "KeymasterBooleanArgument.java"


# instance fields
.field public final value:Z


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keymaster/KeymasterBooleanArgument;->value:Z

    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x70000000

    if-ne v0, v1, :cond_0

    nop

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad bool tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILandroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keymaster/KeymasterBooleanArgument;->value:Z

    return-void
.end method


# virtual methods
.method public writeValue(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method
