.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# instance fields
.field public appLinkGeneration:I

.field public categoryHint:I

.field public ceDataInode:J

.field public dialogMessage:Ljava/lang/String;

.field public disabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public domainVerificationStatus:I

.field public enabled:I

.field public enabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public harmfulAppWarning:Ljava/lang/String;

.field public hidden:Z

.field public installReason:I

.field public installed:Z

.field public instantApp:Z

.field public lastDisableAppCaller:Ljava/lang/String;

.field public notLaunched:Z

.field public overlayPaths:[Ljava/lang/String;

.field public stopped:Z

.field public suspended:Z

.field public suspendedAppExtras:Landroid/os/PersistableBundle;

.field public suspendedLauncherExtras:Landroid/os/PersistableBundle;

.field public suspendingPackage:Ljava/lang/String;

.field public virtualPreload:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    iput v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->installReason:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    iget-wide v0, p1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iput-wide v0, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->suspended:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->instantApp:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->instantApp:Z

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    iget v0, p1, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iget v0, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iget v0, p1, Landroid/content/pm/PackageUserState;->categoryHint:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    iget v0, p1, Landroid/content/pm/PackageUserState;->installReason:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->installReason:I

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    nop

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Landroid/content/pm/PackageUserState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/pm/PackageUserState;

    iget-wide v2, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iget-wide v4, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->installed:Z

    iget-boolean v3, v0, Landroid/content/pm/PackageUserState;->installed:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    iget-boolean v3, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iget-boolean v3, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iget-boolean v3, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    iget-boolean v3, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    iget-object v3, v0, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    invoke-static {v2, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    iget-object v3, v0, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    invoke-static {v2, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_a
    :goto_0
    return v1

    :cond_b
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->instantApp:Z

    iget-boolean v3, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    iget-boolean v3, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eq v2, v3, :cond_d

    return v1

    :cond_d
    iget v2, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iget v3, v0, Landroid/content/pm/PackageUserState;->enabled:I

    if-eq v2, v3, :cond_e

    return v1

    :cond_e
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-nez v2, :cond_f

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_f
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    return v1

    :cond_11
    iget v2, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iget v3, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eq v2, v3, :cond_12

    return v1

    :cond_12
    iget v2, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iget v3, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    iget v2, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    iget v3, v0, Landroid/content/pm/PackageUserState;->categoryHint:I

    if-eq v2, v3, :cond_14

    return v1

    :cond_14
    iget v2, p0, Landroid/content/pm/PackageUserState;->installReason:I

    iget v3, v0, Landroid/content/pm/PackageUserState;->installReason:I

    if-eq v2, v3, :cond_15

    return v1

    :cond_15
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_16

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_17

    :cond_16
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_18

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_18

    :cond_17
    return v1

    :cond_18
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-eq v2, v4, :cond_19

    return v1

    :cond_19
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_1b

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v5, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1b
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_1c

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_1d

    :cond_1c
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_1e

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_1e

    :cond_1d
    return v1

    :cond_1e
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-eq v2, v4, :cond_1f

    return v1

    :cond_1f
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_2
    if-ltz v2, :cond_21

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v5, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    return v1

    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_21
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-nez v2, :cond_22

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-nez v2, :cond_23

    :cond_22
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_23
    return v1

    :cond_24
    return v3
.end method

.method public isAvailable(I)Z
    .locals 5

    const/high16 v0, 0x400000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit16 v3, p1, 0x2000

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v0, :cond_3

    iget-boolean v4, p0, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    return v1
.end method

.method public isEnabled(Landroid/content/pm/ComponentInfo;I)Z
    .locals 4

    and-int/lit16 v0, p2, 0x200

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x8000

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    return v2

    :pswitch_1
    return v2

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_2

    return v2

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isMatch(Landroid/content/pm/ComponentInfo;I)Z
    .locals 6

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    const v1, 0x402000

    and-int/2addr v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageUserState;->isEnabled(Landroid/content/pm/ComponentInfo;I)Z

    move-result v4

    if-nez v4, :cond_3

    return v3

    :cond_3
    const/high16 v4, 0x100000

    and-int/2addr v4, p2

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    return v3

    :cond_4
    const/high16 v4, 0x40000

    and-int/2addr v4, p2

    if-eqz v4, :cond_5

    iget-boolean v4, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    if-nez v4, :cond_5

    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    const/high16 v5, 0x80000

    and-int/2addr v5, p2

    if-eqz v5, :cond_6

    iget-boolean v5, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    if-eqz v5, :cond_6

    move v5, v2

    goto :goto_2

    :cond_6
    move v5, v3

    :goto_2
    if-nez v4, :cond_8

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    nop

    :cond_8
    :goto_3
    return v2
.end method
