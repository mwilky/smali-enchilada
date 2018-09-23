.class Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field private final mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mExtendedTimeout:Z

.field private mHasOptionalVerifier:Z

.field private mOptionalVerificationComplete:Z

.field private mOptionalVerificationPassed:Z

.field private mOptionalVerifierUid:I

.field private mRequiredVerificationComplete:Z

.field private mRequiredVerificationPassed:Z

.field private final mRequiredVerifierUid:I

.field private mSufficientVerificationComplete:Z

.field private mSufficientVerificationPassed:Z

.field private final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    iput-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    return-void
.end method


# virtual methods
.method public addOptionalVerifier(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerifierUid:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    return-void
.end method

.method public addSufficientVerifier(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public extendTimeout()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    :cond_0
    return-void
.end method

.method public getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-object v0
.end method

.method public isInstallAllowed()Z
    .locals 3

    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationPassed:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isVerificationComplete()Z
    .locals 3

    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationComplete:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    return v0
.end method

.method public setVerifierResponse(II)Z
    .locals 3

    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    packed-switch p2, :pswitch_data_0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :pswitch_1
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    nop

    :goto_0
    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerifierUid:I

    if-ne p1, v0, :cond_2

    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationComplete:Z

    if-eq p2, v2, :cond_1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationPassed:Z

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationPassed:Z

    nop

    :goto_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, v2, :cond_3

    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    :cond_4
    return v2

    :cond_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public timeoutExtended()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    return v0
.end method
