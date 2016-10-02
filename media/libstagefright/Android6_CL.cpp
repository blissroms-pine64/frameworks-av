#include <string.h>

int export_value = 100;

namespace android {

class MediaSource {
public:
    struct ReadOptions {
        enum SeekMode {
            SEEK_PREVIOUS_SYNC,
            SEEK_NEXT_SYNC,
            SEEK_CLOSEST_SYNC,
            SEEK_CLOSEST,
        };

        ReadOptions();

        // Reset everything back to defaults.
        void reset();

        void setSeekTo(int64_t time_us, SeekMode mode = SEEK_CLOSEST_SYNC);
        void clearSeekTo();
        bool getSeekTo(int64_t *time_us, SeekMode *mode) const;

        void setLateBy(int64_t lateness_us);
        int64_t getLateBy() const;

        void setNonBlocking();
        void clearNonBlocking();
        bool getNonBlocking() const;

    private:
        enum Options {
            kSeekTo_Option      = 1,
        };

        uint32_t mOptions;
        int64_t mSeekTimeUs;
        SeekMode mSeekMode;
        int64_t mLatenessUs;
        bool mNonBlocking;
    };
  };

  MediaSource::ReadOptions::ReadOptions() {
      reset();
  }

  void MediaSource::ReadOptions::reset() {
      mOptions = 0;
      mSeekTimeUs = 0;
      mLatenessUs = 0;
      mNonBlocking = false;
  }

  void MediaSource::ReadOptions::setNonBlocking() {
      mNonBlocking = true;
  }

  void MediaSource::ReadOptions::clearNonBlocking() {
      mNonBlocking = false;
  }

  bool MediaSource::ReadOptions::getNonBlocking() const {
      return mNonBlocking;
  }

  void MediaSource::ReadOptions::setSeekTo(int64_t time_us, SeekMode mode) {
      mOptions |= kSeekTo_Option;
      mSeekTimeUs = time_us;
      mSeekMode = mode;
  }

  void MediaSource::ReadOptions::clearSeekTo() {
      mOptions &= ~kSeekTo_Option;
      mSeekTimeUs = 0;
      mSeekMode = SEEK_CLOSEST_SYNC;
  }

  bool MediaSource::ReadOptions::getSeekTo(
          int64_t *time_us, SeekMode *mode) const {
      *time_us = mSeekTimeUs;
      *mode = mSeekMode;
      return (mOptions & kSeekTo_Option) != 0;
  }

  void MediaSource::ReadOptions::setLateBy(int64_t lateness_us) {
      mLatenessUs = lateness_us;
  }

  int64_t MediaSource::ReadOptions::getLateBy() const {
      return mLatenessUs;
  }

};
