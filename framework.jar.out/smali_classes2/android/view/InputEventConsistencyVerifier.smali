.class public final Landroid/view/InputEventConsistencyVerifier;
.super Ljava/lang/Object;
.source "InputEventConsistencyVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEventConsistencyVerifier$KeyState;
    }
.end annotation


# static fields
.field private static final EVENT_TYPE_GENERIC_MOTION:Ljava/lang/String; = "GenericMotionEvent"

.field private static final EVENT_TYPE_KEY:Ljava/lang/String; = "KeyEvent"

.field private static final EVENT_TYPE_TOUCH:Ljava/lang/String; = "TouchEvent"

.field private static final EVENT_TYPE_TRACKBALL:Ljava/lang/String; = "TrackballEvent"

.field public static final FLAG_RAW_DEVICE_INPUT:I = 0x1

.field private static final IS_ENG_BUILD:Z

.field private static final RECENT_EVENTS_TO_LOG:I = 0x5


# instance fields
.field private mButtonsPressed:I

.field private final mCaller:Ljava/lang/Object;

.field private mCurrentEvent:Landroid/view/InputEvent;

.field private mCurrentEventType:Ljava/lang/String;

.field private final mFlags:I

.field private mHoverEntered:Z

.field private mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field private mLastEventSeq:I

.field private mLastEventType:Ljava/lang/String;

.field private mLastNestingLevel:I

.field private final mLogTag:Ljava/lang/String;

.field private mMostRecentEventIndex:I

.field private mRecentEvents:[Landroid/view/InputEvent;

.field private mRecentEventsUnhandled:[Z

.field private mTouchEventStreamDeviceId:I

.field private mTouchEventStreamIsTainted:Z

.field private mTouchEventStreamPointers:I

.field private mTouchEventStreamSource:I

.field private mTouchEventStreamUnhandled:Z

.field private mTrackballDown:Z

.field private mTrackballUnhandled:Z

.field private mViolationMessage:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/InputEventConsistencyVerifier;->IS_ENG_BUILD:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mCaller:Ljava/lang/Object;

    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mFlags:I

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    const-string v0, "InputEventConsistencyVerifier"

    :goto_0
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLogTag:Ljava/lang/String;

    return-void
.end method

.method private addKeyState(III)V
    .locals 2

    invoke-static {p1, p2, p3}, Landroid/view/InputEventConsistencyVerifier$KeyState;->obtain(III)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    return-void
.end method

.method private static appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": sent at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/InputEvent;->getEventTimeNano()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string v0, "(unhandled) "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No action button set. Action button should always be non-zero for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "History size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but it should always be 0 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ensureMetaStateIsNormalized(I)V
    .locals 5

    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v1, "Metastate not normalized.  Was 0x%08x but expected 0x%08x."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pointer count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but it should always be 1 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->deviceId:I

    if-ne v3, p1, :cond_2

    iget v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->source:I

    if-ne v3, p2, :cond_2

    iget v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->keyCode:I

    if-ne v3, p3, :cond_2

    if-eqz p4, :cond_1

    if-eqz v0, :cond_0

    iget-object v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v3, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    goto :goto_1

    :cond_0
    iget-object v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    :goto_1
    iput-object v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    iget-object v1, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private finishEvent()V
    .locals 9

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->isTainted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v4, "\n  in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mCaller:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v4, "\n  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-static {v0, v2, v4, v2}, Landroid/view/InputEventConsistencyVerifier;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v4, "\n  -- recent events --"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_1

    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    add-int/2addr v4, v3

    sub-int/2addr v4, v0

    rem-int/2addr v4, v3

    iget-object v5, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v5, v5, v4

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v7, "\n  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    aget-boolean v8, v8, v4

    invoke-static {v6, v7, v5, v8}, Landroid/view/InputEventConsistencyVerifier;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLogTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v1}, Landroid/view/InputEvent;->setTainted(Z)V

    :cond_2
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_3
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    if-nez v0, :cond_4

    new-array v0, v3, [Landroid/view/InputEvent;

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    new-array v0, v3, [Z

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    :cond_4
    iget v0, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    add-int/2addr v0, v1

    rem-int/2addr v0, v3

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/InputEvent;->recycle()V

    :cond_5
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v3}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    move-result-object v3

    aput-object v3, v1, v0

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    aput-boolean v2, v1, v0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    return-void
.end method

.method public static isInstrumentationEnabled()Z
    .locals 1

    sget-boolean v0, Landroid/view/InputEventConsistencyVerifier;->IS_ENG_BUILD:Z

    return v0
.end method

.method private problem(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v0

    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    if-ne p3, v1, :cond_0

    return v2

    :cond_0
    if-lez p2, :cond_1

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    :goto_0
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 11

    const-string v0, "GenericMotionEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v3

    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    if-eqz v4, :cond_8

    const/16 v4, 0x40

    const/16 v6, 0x20

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v4, "Invalid action for generic pointer event."

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    iget v9, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/2addr v9, v3

    if-eq v9, v3, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Action button for ACTION_BUTTON_RELEASE event is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", but it was either never pressed or has already been released."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_1
    iget v9, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    not-int v10, v3

    and-int/2addr v9, v10

    iput v9, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    if-ne v3, v6, :cond_2

    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_2

    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    goto :goto_0

    :cond_2
    if-ne v3, v4, :cond_3

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_3

    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    :cond_3
    :goto_0
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    if-eq v4, v2, :cond_a

    const-string v4, "Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    iget v9, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/2addr v9, v3

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Action button for ACTION_BUTTON_PRESS event is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", but it has already been pressed and has yet to be released."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_4
    iget v9, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/2addr v9, v3

    iput v9, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    if-ne v3, v6, :cond_5

    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_5

    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    goto :goto_1

    :cond_5
    if-ne v3, v4, :cond_6

    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_6

    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    :cond_6
    :goto_1
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    if-eq v4, v2, :cond_a

    const-string v4, "Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    iget-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    if-nez v4, :cond_7

    const-string v4, "ACTION_HOVER_EXIT without prior ACTION_HOVER_ENTER"

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_7
    iput-boolean v8, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    goto :goto_3

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    iput-boolean v7, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    goto :goto_3

    :pswitch_4
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_3

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_3

    :goto_2
    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_a

    if-eq v0, v5, :cond_9

    const-string v4, "Invalid action for generic joystick event."

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :cond_a
    :goto_3
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 2

    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {p0, v0, p2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, p2}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p2}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    :goto_0
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 8

    const-string v0, "KeyEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v1, v2, v3, v4}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v5, "ACTION_UP but key was not down."

    invoke-direct {p0, v5}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V

    goto :goto_1

    :pswitch_2
    const/4 v5, 0x0

    invoke-direct {p0, v1, v2, v3, v5}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-boolean v7, v6, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    if-eqz v7, :cond_2

    iput-boolean v5, v6, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    goto :goto_1

    :cond_2
    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mFlags:I

    and-int/2addr v4, v5

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "ACTION_DOWN but key is already down and this event is not a key repeat."

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1, v2, v3}, Landroid/view/InputEventConsistencyVerifier;->addKeyState(III)V

    goto :goto_1

    :goto_0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for key event."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)V
    .locals 12

    const-string v0, "TouchEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    iget-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    if-eqz v4, :cond_4

    :cond_3
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    :cond_4
    iget-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    if-eqz v4, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setTainted(Z)V

    :cond_5
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    if-nez v3, :cond_7

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    if-ne v6, v4, :cond_6

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    if-eq v6, v5, :cond_7

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch event stream contains events from multiple sources: previous device id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", previous source "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", new device id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", new source "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_7
    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    iput v5, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_13

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    goto :goto_2

    :pswitch_0
    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-eqz v2, :cond_8

    const-string v2, "ACTION_OUTSIDE but pointers are still down."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto/16 :goto_7

    :pswitch_1
    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto/16 :goto_7

    :pswitch_2
    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v6, v1, :cond_14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_MOVE contained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pointers but there are currently "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pointers down."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto/16 :goto_7

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto/16 :goto_7

    :pswitch_4
    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-eqz v7, :cond_9

    const-string v7, "ACTION_DOWN but pointers are already down.  Probably missing ACTION_UP from previous gesture."

    invoke-direct {p0, v7}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    shl-int v1, v2, v1

    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    goto/16 :goto_7

    :goto_2
    nop

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    const/4 v8, 0x5

    if-ne v1, v8, :cond_e

    iget v8, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-nez v8, :cond_a

    const-string v8, "ACTION_POINTER_DOWN but no other pointers were down."

    invoke-direct {p0, v8}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    :cond_a
    if-ltz v7, :cond_d

    if-lt v7, v6, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    shl-int v9, v2, v8

    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_POINTER_DOWN specified pointer id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " which is already down."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto :goto_4

    :cond_c
    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    or-int/2addr v2, v9

    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    goto :goto_4

    :cond_d
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_POINTER_DOWN index is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " but the pointer count is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    :goto_4
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    goto/16 :goto_7

    :cond_e
    const/4 v8, 0x6

    if-ne v1, v8, :cond_12

    if-ltz v7, :cond_11

    if-lt v7, v6, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    shl-int v9, v2, v8

    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    and-int/2addr v10, v9

    if-nez v10, :cond_10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_POINTER_UP specified pointer id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " which is not currently down."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto :goto_6

    :cond_10
    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    not-int v10, v9

    and-int/2addr v2, v10

    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    goto :goto_6

    :cond_11
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_POINTER_UP index is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " but the pointer count is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    :goto_6
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_7

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid action "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for touch event."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_7

    :cond_13
    const-string v1, "Source was not SOURCE_CLASS_POINTER."

    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_14
    :goto_7
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;I)V
    .locals 4

    const-string v0, "TrackballEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_3

    :pswitch_1
    iget-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-nez v3, :cond_1

    const-string v2, "ACTION_UP but trackball is not down."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    :goto_0
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_3

    :pswitch_2
    iget-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    if-nez v3, :cond_2

    const-string v2, "ACTION_DOWN but trackball is already down."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    :goto_1
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_3

    :goto_2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for trackball event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :goto_3
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    const-string v2, "Trackball is down but pressure is not greater than 0."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    const-string v2, "Trackball is up but pressure is not equal to 0."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v2, "Source was not SOURCE_CLASS_TRACKBALL."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_4
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUnhandledEvent(Landroid/view/InputEvent;I)V
    .locals 6

    iget v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    aput-boolean v1, v0, v2

    :cond_1
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v5

    if-eqz v5, :cond_2

    iput-boolean v1, v5, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    :cond_2
    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-eqz v2, :cond_5

    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    :goto_0
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iget-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V

    goto :goto_0

    :cond_0
    return-void
.end method
