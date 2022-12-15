.class public abstract Lcom/mediatek/common/voicecommand/VoiceCommandListener;
.super Ljava/lang/Object;
.source "VoiceCommandListener.java"


# static fields
.field private static final ACTION_COMMON_INDEX:I = 0x1

.field public static final ACTION_EXTRA_RESULT:Ljava/lang/String; = "Result"

.field public static final ACTION_EXTRA_RESULT_ERROR:I = 0xa

.field public static final ACTION_EXTRA_RESULT_INFO:Ljava/lang/String; = "Result_Info"

.field public static final ACTION_EXTRA_RESULT_INFO1:Ljava/lang/String; = "Result_Info1"

.field public static final ACTION_EXTRA_RESULT_INFO2:Ljava/lang/String; = "Result_Info2"

.field public static final ACTION_EXTRA_RESULT_INFO3:Ljava/lang/String; = "Result_Info3"

.field public static final ACTION_EXTRA_RESULT_INFO4:Ljava/lang/String; = "Result_Info4"

.field public static final ACTION_EXTRA_RESULT_INFO5:Ljava/lang/String; = "Result_Info5"

.field public static final ACTION_EXTRA_RESULT_SUCCESS:I = 0x1

.field public static final ACTION_EXTRA_SEND:Ljava/lang/String; = "Send"

.field public static final ACTION_EXTRA_SEND_INFO:Ljava/lang/String; = "Send_Info"

.field public static final ACTION_EXTRA_SEND_INFO1:Ljava/lang/String; = "Send_Info1"

.field public static final ACTION_EXTRA_SEND_INFO2:Ljava/lang/String; = "Send_Info2"

.field public static final ACTION_EXTRA_SEND_INFO3:Ljava/lang/String; = "Send_Info3"

.field public static final ACTION_MAIN_VOICE_COMMON:I = 0x1

.field public static final ACTION_MAIN_VOICE_CONTACTS:I = 0x5

.field public static final ACTION_MAIN_VOICE_RECOGNITION:I = 0x4

.field public static final ACTION_MAIN_VOICE_TRAINING:I = 0x3

.field public static final ACTION_MAIN_VOICE_TRIGGER:I = 0x7

.field public static final ACTION_MAIN_VOICE_UI:I = 0x2

.field public static final ACTION_MAIN_VOICE_WAKEUP:I = 0x6

.field public static final ACTION_VOICE_COMMON_COMMAND_PATH:I = 0x2

.field public static final ACTION_VOICE_COMMON_KEYWORD:I = 0x1

.field public static final ACTION_VOICE_COMMON_PROCESS_STATE:I = 0x3

.field public static final ACTION_VOICE_CONTACTS_DISABLE:I = 0x4

.field public static final ACTION_VOICE_CONTACTS_ENABLE:I = 0x3

.field public static final ACTION_VOICE_CONTACTS_INTENSITY:I = 0x5

.field public static final ACTION_VOICE_CONTACTS_NAME:I = 0x8

.field public static final ACTION_VOICE_CONTACTS_NOTIFY:I = 0x7

.field public static final ACTION_VOICE_CONTACTS_ORIENTATION:I = 0xb

.field public static final ACTION_VOICE_CONTACTS_RECOGNITION_DISABLE:I = 0xd

.field public static final ACTION_VOICE_CONTACTS_RECOGNITION_ENABLE:I = 0xc

.field public static final ACTION_VOICE_CONTACTS_SEARCH_COUNT:I = 0xa

.field public static final ACTION_VOICE_CONTACTS_SELECTED:I = 0x6

.field public static final ACTION_VOICE_CONTACTS_SPEECH_DETECTED:I = 0x9

.field public static final ACTION_VOICE_CONTACTS_START:I = 0x1

.field public static final ACTION_VOICE_CONTACTS_STOP:I = 0x2

.field public static final ACTION_VOICE_RECOGNITION_INTENSITY:I = 0x2

.field public static final ACTION_VOICE_RECOGNITION_NOTIFY:I = 0x3

.field public static final ACTION_VOICE_RECOGNITION_START:I = 0x1

.field public static final ACTION_VOICE_TRAINING_CHANGE_KEYPHRASE:I = 0x13

.field public static final ACTION_VOICE_TRAINING_CONTINUE:I = 0x9

.field public static final ACTION_VOICE_TRAINING_ENROLL_START:I = 0x11

.field public static final ACTION_VOICE_TRAINING_FINISH:I = 0x8

.field public static final ACTION_VOICE_TRAINING_GET_USER_LIST:I = 0x12

.field public static final ACTION_VOICE_TRAINING_INIT:I = 0xb

.field public static final ACTION_VOICE_TRAINING_INTENSITY:I = 0x3

.field public static final ACTION_VOICE_TRAINING_MODIFY:I = 0x7

.field public static final ACTION_VOICE_TRAINING_MODIFY_PARAM:I = 0xc

.field public static final ACTION_VOICE_TRAINING_NOTIFY:I = 0x5

.field public static final ACTION_VOICE_TRAINING_NOTIFY_FINISH:I = 0x10

.field public static final ACTION_VOICE_TRAINING_NOTIFY_PROGRESS:I = 0xf

.field public static final ACTION_VOICE_TRAINING_PASSWORD_FILE:I = 0x4

.field public static final ACTION_VOICE_TRAINING_PAUSE:I = 0xa

.field public static final ACTION_VOICE_TRAINING_QUERY_PARAM:I = 0xd

.field public static final ACTION_VOICE_TRAINING_RESET:I = 0x6

.field public static final ACTION_VOICE_TRAINING_START:I = 0x1

.field public static final ACTION_VOICE_TRAINING_STOP:I = 0x2

.field public static final ACTION_VOICE_TRAINING_UPDATE_MODEL:I = 0xe

.field public static final ACTION_VOICE_TRIGGER_COMMAND_STATUS:I = 0x8

.field public static final ACTION_VOICE_TRIGGER_DISABLE:I = 0x3

.field public static final ACTION_VOICE_TRIGGER_ENABLE:I = 0x2

.field public static final ACTION_VOICE_TRIGGER_GET_INITIAL_PARAMS:I = 0xe

.field public static final ACTION_VOICE_TRIGGER_GET_LOCALE:I = 0xc

.field public static final ACTION_VOICE_TRIGGER_INIT:I = 0x6

.field public static final ACTION_VOICE_TRIGGER_MODE:I = 0x7

.field public static final ACTION_VOICE_TRIGGER_MODIFY_PARAM:I = 0x9

.field public static final ACTION_VOICE_TRIGGER_NOTIFY_ARRIVED:I = 0x4

.field public static final ACTION_VOICE_TRIGGER_NOTIFY_DETECTED:I = 0x5

.field public static final ACTION_VOICE_TRIGGER_NOTIFY_PACKAGE_CHANGED:I = 0xf

.field public static final ACTION_VOICE_TRIGGER_QUERY_PARAM:I = 0xa

.field public static final ACTION_VOICE_TRIGGER_READ_STATUS:I = 0xd

.field public static final ACTION_VOICE_TRIGGER_SET_LOCALE:I = 0xb

.field public static final ACTION_VOICE_TRIGGER_START:I = 0x1

.field public static final ACTION_VOICE_UI_DISALBE:I = 0x4

.field public static final ACTION_VOICE_UI_ENABLE:I = 0x3

.field public static final ACTION_VOICE_UI_NOTIFY:I = 0x5

.field public static final ACTION_VOICE_UI_START:I = 0x1

.field public static final ACTION_VOICE_UI_STOP:I = 0x2

.field public static final ACTION_VOICE_WAKEUP_COMMAND_STATUS:I = 0x7

.field public static final ACTION_VOICE_WAKEUP_DISABLE:I = 0x3

.field public static final ACTION_VOICE_WAKEUP_ENABLE:I = 0x2

.field public static final ACTION_VOICE_WAKEUP_INIT:I = 0x5

.field public static final ACTION_VOICE_WAKEUP_MODE:I = 0x6

.field public static final ACTION_VOICE_WAKEUP_NOTIFY:I = 0x4

.field public static final ACTION_VOICE_WAKEUP_READ_STATUS:I = 0x8

.field public static final ACTION_VOICE_WAKEUP_START:I = 0x1

.field public static final VOICE_COMMAND_SERVICE:Ljava/lang/String; = "voicecommand"

.field public static final VOICE_CONFIDENCE_THRESHOLD_DEFAULT:I = 0x32

.field public static final VOICE_CONFIDENCE_THRESHOLD_MAX:I = 0x64

.field public static final VOICE_CONFIDENCE_THRESHOLD_MIN:I = 0x0

.field private static final VOICE_ERROR_COMMON:I = 0x3e8

.field public static final VOICE_ERROR_COMMON_ILLEGAL_PROCESS:I = 0x3ed

.field public static final VOICE_ERROR_COMMON_INVALID_ACTION:I = 0x3ef

.field public static final VOICE_ERROR_COMMON_INVALID_DATA:I = 0x3f0

.field public static final VOICE_ERROR_COMMON_NOTIFY_FAIL:I = 0x3f1

.field public static final VOICE_ERROR_COMMON_NO_PERMISSION:I = 0x3ea

.field public static final VOICE_ERROR_COMMON_PROCESS_OFF:I = 0x3e9

.field public static final VOICE_ERROR_COMMON_REGISTERED:I = 0x3eb

.field public static final VOICE_ERROR_COMMON_SERVICE:I = 0x3ee

.field public static final VOICE_ERROR_COMMON_UNREGISTER:I = 0x3ec

.field private static final VOICE_ERROR_CONTACTS:I = 0x190

.field public static final VOICE_ERROR_CONTACTS_SEND_INVALID:I = 0x192

.field public static final VOICE_ERROR_CONTACTS_VOICE_INVALID:I = 0x191

.field private static final VOICE_ERROR_RECOGNIZE:I = 0x0

.field public static final VOICE_ERROR_RECOGNIZE_DENIED:I = 0x1

.field public static final VOICE_ERROR_RECOGNIZE_LOWLY:I = 0x3

.field public static final VOICE_ERROR_RECOGNIZE_NOISY:I = 0x2

.field private static final VOICE_ERROR_SETTING:I = 0xc8

.field public static final VOICE_ERROR_SETTING_LANGUAGE_UPDATE:I = 0xc9

.field public static final VOICE_ERROR_SETTING_VALUE_OUT_OF_RANGE:I = 0xca

.field private static final VOICE_ERROR_TRAINING:I = 0x64

.field public static final VOICE_ERROR_TRAINING_NOISY:I = 0x66

.field public static final VOICE_ERROR_TRAINING_NOT_ENOUGH:I = 0x65

.field public static final VOICE_ERROR_TRAINING_PASSWORD_DIFF:I = 0x67

.field public static final VOICE_ERROR_TRAINING_PASSWORD_EXIST:I = 0x68

.field private static final VOICE_ERROR_UI:I = 0x12c

.field public static final VOICE_ERROR_UI_INVALID:I = 0x12d

.field public static final VOICE_NO_ERROR:I = 0x0

.field public static final VOICE_SERVICE_ACTION:Ljava/lang/String; = "com.mediatek.voicecommand"

.field public static final VOICE_SERVICE_CATEGORY:Ljava/lang/String; = "com.mediatek.nativeservice"

.field public static final VOICE_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.voicecommand"

.field public static final VOICE_TRAINING_PARAM_CONFIDENCE_THRESHOLD:I = 0x1

.field public static final VOICE_TRAINING_PARAM_REPEAT_TIMES:I = 0x2

.field public static final VOICE_TRAINING_PARAM_TIMEOUT:I = 0x0

.field public static final VOICE_TRAINING_SERVICE_ACTION:Ljava/lang/String; = "com.mediatek.intent.action.bindEnrollmentService"

.field public static final VOICE_TRAINING_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.voicecommand.vis"

.field public static final VOICE_TRIGGER_ANTI_SPOOF_THRESHOLD:I = 0x2

.field public static final VOICE_TRIGGER_PARAM_COARSE_CONFIDENCE:I = 0x0

.field public static final VOICE_TRIGGER_SECOND_STAGE_THRESHOLD:I = 0x1

.field public static final VOICE_WAKEUP_ACTIVTY_ACTION:Ljava/lang/String; = "com.mediatek.voicecommand.VOW_INTERACT"

.field public static final VOICE_WAKEUP_MODE_SPEAKER_DEPENDENT:I = 0x2

.field public static final VOICE_WAKEUP_MODE_SPEAKER_INDEPENDENT:I = 0x1

.field public static final VOICE_WAKEUP_MODE_TRIGGER:I = 0x3

.field public static final VOICE_WAKEUP_MODE_UNLOCK:I = 0x0

.field public static final VOICE_WAKEUP_SERVICE_ACTION:Ljava/lang/String; = "com.mediatek.voicecommand.VoiceWakeupInteractionService"

.field public static final VOICE_WAKEUP_STATUS_COMMAND_CHECKED:I = 0x2

.field public static final VOICE_WAKEUP_STATUS_COMMAND_UNCHECKED:I = 0x1

.field public static final VOICE_WAKEUP_STATUS_NOCOMMAND_UNCHECKED:I = 0x0

.field public static final VOW_ENROLLMENT_BCP47_LOCALE:Ljava/lang/String; = "en-US"

.field public static final VOW_ENROLLMENT_TEXT:Ljava/lang/String; = "Hello There"

.field private static sActionMainToStr:[Ljava/lang/String;

.field private static sActionVoiceToStr:[[Ljava/lang/String;

.field private static sTrainingParamToStr:[Ljava/lang/String;

.field private static sTriggerParamToStr:[Ljava/lang/String;

.field private static sWakeupModeToStr:[Ljava/lang/String;

.field private static sWakeupStatusToStr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 714
    const-string v0, "EMPTY"

    const-string v1, "ACTION_MAIN_VOICE_COMMON"

    const-string v2, "ACTION_MAIN_VOICE_UI"

    const-string v3, "ACTION_MAIN_VOICE_TRAINING"

    const-string v4, "ACTION_MAIN_VOICE_RECOGNITION"

    const-string v5, "ACTION_MAIN_VOICE_CONTACTS"

    const-string v6, "ACTION_MAIN_VOICE_WAKEUP"

    const-string v7, "ACTION_MAIN_VOICE_TRIGGER"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->sActionMainToStr:[Ljava/lang/String;

    .line 725
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "EMPTY"

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "ACTION_VOICE_COMMON_KEYWORD"

    const-string v3, "ACTION_VOICE_COMMON_COMMAND_PATH"

    const-string v4, "ACTION_VOICE_COMMON_PROCESS_STATE"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v4, "EMPTY"

    const-string v5, "ACTION_VOICE_UI_START"

    const-string v6, "ACTION_VOICE_UI_STOP"

    const-string v7, "ACTION_VOICE_UI_ENABLE"

    const-string v8, "ACTION_VOICE_UI_DISALBE"

    const-string v9, "ACTION_VOICE_UI_NOTIFY"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v4, "EMPTY"

    const-string v5, "ACTION_VOICE_TRAINING_START"

    const-string v6, "ACTION_VOICE_TRAINING_STOP"

    const-string v7, "ACTION_VOICE_TRAINING_INTENSITY"

    const-string v8, "ACTION_VOICE_TRAINING_PASSWORD_FILE"

    const-string v9, "ACTION_VOICE_TRAINING_NOTIFY"

    const-string v10, "ACTION_VOICE_TRAINING_RESET"

    const-string v11, "ACTION_VOICE_TRAINING_MODIFY"

    const-string v12, "ACTION_VOICE_TRAINING_FINISH"

    const-string v13, "ACTION_VOICE_TRAINING_CONTINUE"

    const-string v14, "ACTION_VOICE_TRAINING_PAUSE"

    const-string v15, "ACTION_VOICE_TRAINING_INIT"

    const-string v16, "ACTION_VOICE_TRAINING_MODIFY_PARAM"

    const-string v17, "ACTION_VOICE_TRAINING_QUERY_PARAM"

    const-string v18, "ACTION_VOICE_TRAINING_UPDATE_MODEL"

    const-string v19, "ACTION_VOICE_TRAINING_NOTIFY_PROGRESS"

    const-string v20, "ACTION_VOICE_TRAINING_NOTIFY_FINISH"

    const-string v21, "ACTION_VOICE_TRAINING_ENROLL_START"

    const-string v22, "ACTION_VOICE_TRAINING_GET_USER_LIST"

    const-string v23, "ACTION_VOICE_TRAINING_CHANGE_KEYPHRASE"

    filled-new-array/range {v4 .. v23}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string v2, "ACTION_VOICE_RECOGNITION_START"

    const-string v3, "ACTION_VOICE_RECOGNITION_INTENSITY"

    const-string v4, "ACTION_VOICE_RECOGNITION_NOTIFY"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v3, "EMPTY"

    const-string v4, "ACTION_VOICE_CONTACTS_START"

    const-string v5, "ACTION_VOICE_CONTACTS_STOP"

    const-string v6, "ACTION_VOICE_CONTACTS_ENABLE"

    const-string v7, "ACTION_VOICE_CONTACTS_DISABLE"

    const-string v8, "ACTION_VOICE_CONTACTS_INTENSITY"

    const-string v9, "ACTION_VOICE_CONTACTS_SELECTED"

    const-string v10, "ACTION_VOICE_CONTACTS_NOTIFY"

    const-string v11, "ACTION_VOICE_CONTACTS_NAME"

    const-string v12, "ACTION_VOICE_CONTACTS_SPEECH_DETECTED"

    const-string v13, "ACTION_VOICE_CONTACTS_SEARCH_COUNT"

    const-string v14, "ACTION_VOICE_CONTACTS_ORIENTATION"

    const-string v15, "ACTION_VOICE_CONTACTS_RECOGNITION_ENABLE"

    const-string v16, "ACTION_VOICE_CONTACTS_RECOGNITION_DISABLE"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v3, "EMPTY"

    const-string v4, "ACTION_VOICE_WAKEUP_START"

    const-string v5, "ACTION_VOICE_WAKEUP_ENABLE"

    const-string v6, "ACTION_VOICE_WAKEUP_DISABLE"

    const-string v7, "ACTION_VOICE_WAKEUP_NOTIFY"

    const-string v8, "ACTION_VOICE_WAKEUP_INIT"

    const-string v9, "ACTION_VOICE_WAKEUP_MODE"

    const-string v10, "ACTION_VOICE_WAKEUP_COMMAND_STATUS"

    const-string v11, "ACTION_VOICE_WAKEUP_READ_STATUS"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v3, "EMPTY"

    const-string v4, "ACTION_VOICE_TRIGGER_START"

    const-string v5, "ACTION_VOICE_TRIGGER_ENABLE"

    const-string v6, "ACTION_VOICE_TRIGGER_DISABLE"

    const-string v7, "ACTION_VOICE_TRIGGER_NOTIFY_ARRIVED"

    const-string v8, "ACTION_VOICE_TRIGGER_NOTIFY_DETECTED"

    const-string v9, "ACTION_VOICE_TRIGGER_INIT"

    const-string v10, "ACTION_VOICE_TRIGGER_MODE"

    const-string v11, "ACTION_VOICE_TRIGGER_COMMAND_STATUS"

    const-string v12, "ACTION_VOICE_TRIGGER_MODIFY_PARAM"

    const-string v13, "ACTION_VOICE_TRIGGER_QUERY_PARAM"

    const-string v14, "ACTION_VOICE_TRIGGER_SET_LOCALE"

    const-string v15, "ACTION_VOICE_TRIGGER_GET_LOCALE"

    const-string v16, "ACTION_VOICE_TRIGGER_READ_STATUS"

    const-string v17, "ACTION_VOICE_TRIGGER_GET_INITIAL_PARAMS"

    const-string v18, "ACTION_VOICE_TRIGGER_NOTIFY_PACKAGE_CHANGED"

    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->sActionVoiceToStr:[[Ljava/lang/String;

    .line 816
    const-string v0, "VOICE_WAKEUP_MODE_UNLOCK"

    const-string v1, "VOICE_WAKEUP_MODE_SPEAKER_INDEPENDENT"

    const-string v2, "VOICE_WAKEUP_MODE_SPEAKER_DEPENDENT"

    const-string v3, "VOICE_WAKEUP_MODE_TRIGGER"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->sWakeupModeToStr:[Ljava/lang/String;

    .line 823
    const-string v0, "VOICE_WAKEUP_STATUS_NOCOMMAND_UNCHECKED"

    const-string v1, "VOICE_WAKEUP_STATUS_COMMAND_UNCHECKED"

    const-string v2, "VOICE_WAKEUP_STATUS_COMMAND_CHECKED"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->sWakeupStatusToStr:[Ljava/lang/String;

    .line 829
    const-string v0, "VOICE_TRAINING_PARAM_TIMEOUT"

    const-string v1, "VOICE_TRAINING_PARAM_CONFIDENCE_THRESHOLD"

    const-string v2, "VOICE_TRAINING_PARAM_REPEAT_TIMES"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->sTrainingParamToStr:[Ljava/lang/String;

    .line 835
    const-string v0, "VOICE_TRIGGER_PARAM_COARSE_CONFIDENCE"

    const-string v1, "VOICE_TRIGGER_SECOND_STAGE_THRESHOLD"

    const-string v2, "VOICE_TRIGGER_ANTI_SPOOF_THRESHOLD"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->sTriggerParamToStr:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMainActionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .line 671
    sget-object v0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->sActionMainToStr:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getSubActionName(II)Ljava/lang/String;
    .locals 1
    .param p0, "mainAction"    # I
    .param p1, "subAction"    # I

    .line 679
    sget-object v0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->sActionVoiceToStr:[[Ljava/lang/String;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static getTrainingParamStr(I)Ljava/lang/String;
    .locals 1
    .param p0, "param"    # I

    .line 703
    sget-object v0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->sTrainingParamToStr:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getTriggerParamStr(I)Ljava/lang/String;
    .locals 1
    .param p0, "param"    # I

    .line 711
    sget-object v0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->sTriggerParamToStr:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getWakeupModeStr(I)Ljava/lang/String;
    .locals 1
    .param p0, "wakeupMode"    # I

    .line 687
    sget-object v0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->sWakeupModeToStr:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getWakeupStatusStr(I)Ljava/lang/String;
    .locals 1
    .param p0, "wakeupStatus"    # I

    .line 695
    sget-object v0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->sWakeupStatusToStr:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
